// ***** PENDIENTE TESTEAR CUANDO EDIFICIO ESTE TESTEADO *****

load "../clsEdificio.ring"
load "../clsParametros.ring"

class Cantera From Edificio {
    //From super: id, costeConstruccion, tiempoConstruccion 
    dispatcher
    cantidadInicial cantidadMaxima
    canteros //Extractor
    filon //Productor
    almacen
  
    func constructor (id, nombre, capital, disp, Parametros) {
        //locales para test
        costeConstruccion = Parametros.Cantera_Construccion_Coste;
        tiempoContruccion = Parametros.Cantera_Construccion_Tiempo;
    
        //Mejor si guardamos en Edificio la capital
        super.constructor (id, nombre, TipoEdificio['CANTERA_DE_PIEDRA'], capital.getPosicion(), costeConstruccion, tiempoContruccion);

        this.cantidadInicial = Parametros.Cantera_Productor_CantidadInicial;
        this.cantidadMaxima = Parametros.Cantera_Productor_CantidadMaxima;

        /* PENDIENTE DE CAPITAL, PRODUCTOR, EXTRACTOR, DISPATCHER
        this.capital.addCantera(this);

        this.filon = new Productor ( null, PIEDRA, Cantera.cantidadInicial, Cantera.cantidadMaxima, Parametros.Cantera_Productor_Ratio);
        
        this.almacen = new Almacen ( 68, 'Cantera de piedra', PIEDRA, this.capital.getPosicion(), Parametros.Cantera_Almacen_Capacidad);
        
        cantidadInicial = 1;
        this.canteros = new Extractor (this.filon, this.almacen, Parametros.Cantera_Cosecha_Tamanyo);

        this.disp.addTareaRepetitiva(this, 'extrae', Parametros.Cantera_Cosecha_Tamanyo);
        */
        super.setStatus ('Sin envios actuales');
    }

    /* PENDIENTE
    extrae() {
        const cantidad = this.canteros.getCantidad();
        this.almacen.addCantidad (cantidad);

        // Si el almacen alcanza el tope enviar un transporte de piedra a palacio
        if (this.almacen.getCantidad() >= this.almacen.getMaxCantidad()) {
            //  console.log ('Cantera: ' + cantidad + ' para enviar');
            if (this.hayEnvioEnMarcha === false) {
                // console.log ('Cantera: enviando');
                this.hayEnvioEnMarcha = true;
                this.enviaPiedraHaciaCiudad();
            }
        }
    }
    
    enviaPiedraHaciaCiudad() {
        const cantidad = this.almacen.restaCantidad(this.almacen.getCantidad());
        const transporteDePiedra = new Transporte (this.almacen, this.capital.getSilos().getAlmacenPiedra(), PIEDRA, cantidad, this );

        transporteDePiedra.calculaViaje();
        this.setStatus ('Enviando piedra...');
        this.disp.addTareaRepetitiva(transporteDePiedra, 'envia', Parametros.Transporte_Tiempo_Recalculo_Ruta);
    }
   
    public getPiedraActual() { return this.almacen.getCantidad(); }
    public getMaxAlmacen() { return this.almacen.getMaxCantidad(); }
    public estaActiva() { return (this.filon.getStock() > Parametros.Filon_Vacio); }
     */

    func getStatus() { return super.status }
    func setStatus(mensaje) { super.setStatus(mensaje) }
}
