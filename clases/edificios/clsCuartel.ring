// ***** PENDIENTE *****

interface Unidades {
  unidad: UnidadMilitar;
  cantidad: number;
  investigacion: TipoItemInvestigacion;
}

class Cuartel extends Edificio {
  private unidades: Array < Unidades >;

  constructor (id: number, nombre: string, private capital: Capital, private disp: Dispatcher) {
    super (id, nombre, TipoEdificio.CUARTEL, capital.getPosicion(), 0, 0);

    this.capital.setCuartel(this);
    this.unidades = new Array < Unidades > ();
  }

  getTropas() { return this.unidades; }
  getTropasJSON() { return JSON.stringify(this.unidades); }

  getStatus() { return this.status; }
  setStatus( mensaje: string ) { super.setStatus(mensaje); }

  addUnidades (v: Array < any >) {
    const tipo: UnidadMilitar = v[0]; const cantidad: number = v[1];
    let indiceElemento = -1;
    this.unidades.forEach( (x, indice) => {
      if (x.unidad.getID() === tipo.getID()) {indiceElemento = indice; }
    });

    //  .findIndex(x => x.id === idTipo);
    if ( indiceElemento === -1) {
      const nuevaUnidad: Unidades = {unidad: tipo, cantidad: cantidad, investigacion: null}; // Ojo....
      this.unidades.push (nuevaUnidad);
    } else {
      this.unidades[indiceElemento].cantidad += cantidad;
    }

    // console.log (this.getTropas());

    this.setStatus ('Sin actividad');

    return -1;
  }

  getTipoUnidadesPermitidas() {
    const lista = new Array < Unidades > ();
    // let unidadItem: UnidadMilitar;
    const myCI = this.capital.getCentroDeInvestigacion();

    const elCuartel = this;

    myCI.getListaUnidadesMilitaresConseguidas().forEach ( function ( item) {
      const indice = item.getID();

      // console.log (elCuartel.unidades);
      let existe = false;
      switch (indice) {
        // case 1: unidadItem = new CivilConHonda ( 100, 1, 100, 100); // Obtenerlo del item de investigacion
        case 1:
          elCuartel.unidades.forEach( (x) => {
            // console.log ('UNIDAD 2:::: ' + x.unidad.getID());
            if (x.unidad.getID() === 1001) {lista.push (x); existe = true; }
          });
          if (existe === false ) {
            const nuevaUnidad: Unidades = {unidad: new CivilConHonda(100, 1, 1, 100) , cantidad: 0, investigacion: item}; // Ojo....
            elCuartel.unidades.push (nuevaUnidad);
            lista.push (nuevaUnidad);
          }
          break;

        case 2:
          elCuartel.unidades.forEach( (x) => {
            if (x.unidad.getID() === 1002) {lista.push (x); existe = true; }
          });
          if (existe === false ) {
            const nuevaUnidad: Unidades = {unidad: new Soldado (100, 1, 100, 100) , cantidad: 0, investigacion: item}; // Ojo....
            elCuartel.unidades.push (nuevaUnidad);
            lista.push (nuevaUnidad);
          }
          break;

        default:
          // console.log ('UNIDAD 0:::: ' + indice);
      }
    });

    return lista;
  }

  entrenaCivilesConHonda(cantidad: number = 0) {
    const tipoUnidad = new CivilConHonda(100, 1, 1, 100);
    const maxUnidadesEnEntrenamiento = tipoUnidad.getMaxUnidadesEnEntrenamiento();
    if (cantidad === 0) { cantidad = maxUnidadesEnEntrenamiento; }
    if (cantidad > maxUnidadesEnEntrenamiento) { cantidad = maxUnidadesEnEntrenamiento; }
    const myCI = this.capital.getCentroDeInvestigacion();
    if (myCI.estaComprada(2, 1, 1)) {
      // console.log(' Se inicia reclutamiento de unidades de infanteria: "Civiles con honda".');
      this.setStatus ('Entrenando');

      this.unidades.forEach( (x) => {
        if (x.unidad.getID() === 1001) {
          const precio = x.unidad.getCosteUnitario();
          const importeTotal = precio * cantidad;
          const cantidadObtenida = this.capital.getPalacio().gastaOro(importeTotal);
          if (cantidadObtenida < importeTotal ) {
            this.capital.getPalacio().entraOro(cantidadObtenida);
            alert (' Se aborta el reclutamiento de ' + cantidad + x.unidad.getNombre() + ': Oro insuficiente');
            return false;
          }
        }
      });

      this.disp.addTareaRepetitiva(this, 'addUnidades', 5,
        Array < any > ( tipoUnidad, cantidad ));

    } else {
      // console.log(' No se puede entrenar "Civiles con honda". La investigación no está realizada.');
    }
  }

  entrenaSoldados(cantidad: number = 0) {
    const tipoUnidad = new Soldado(100, 1, 100, 100);
    const maxUnidadesEnEntrenamiento = tipoUnidad.getMaxUnidadesEnEntrenamiento();
    if (cantidad === 0) { cantidad = maxUnidadesEnEntrenamiento; }
    if (cantidad > maxUnidadesEnEntrenamiento) { cantidad = maxUnidadesEnEntrenamiento; }
    const myCI = this.capital.getCentroDeInvestigacion();
    if (myCI.estaComprada(2, 1, 2)) {
      // console.log(' Se inicia reclutamiento de unidades de infanteria: "Civiles con honda".');
      this.setStatus ('Entrenando');

      this.unidades.forEach( (x) => {
        if (x.unidad.getID() === 1002) {
          const precio = x.unidad.getCosteUnitario();
          const importeTotal = precio * cantidad;
          const cantidadObtenida = this.capital.getPalacio().gastaOro(importeTotal);
          if (cantidadObtenida < importeTotal ) {
            this.capital.getPalacio().entraOro(cantidadObtenida);
            alert (' Se aborta el reclutamiento de ' + cantidad + x.unidad.getNombre() + ': Oro insuficiente');
            return false;
          }
        }
      });

      this.disp.addTareaRepetitiva(this, 'addUnidades', 5,
        Array < any > ( tipoUnidad, cantidad ));

    } else {
      // console.log(' No se puede entrenar "Soldados". La investigación no está realizada.');
    }
  }

  entrena( tipoUnidad: Unidades) {
    // console.log (tipoUnidad.unidad.getID());
    switch (tipoUnidad.unidad.getID()) {
      case 1001:
        // console.log (tipoUnidad.unidad);
        this.entrenaCivilesConHonda();
        break;
      case 1002:
        // console.log (tipoUnidad.unidad);
        this.entrenaSoldados();
        break;
    }
  }
}


export { Cuartel };
export { Unidades };
export { Edificio };
export { TipoEdificio };
export { Silos };
