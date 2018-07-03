load "clases/recursos/clsRecurso.ring"
load "clases/clsEdificio.ring"

class Silos from Edificio {
    id
    nombre
    capital
    dispatcher
    almacenes //List < Almacen >;

    func constructor (id, nombre, capital, dispatcher) {
        super.constructor (id, nombre, SILOS, capital.getPosicion(), 0, 0);
        this.capital.setSilos(this);
    }

    func addAlmacen ( nuevoAlmacen) {
        Add(almacenes,nuevoAlmacen)
    }

    public getLista() {
        return this.almacenes;
    }

    public getAlmacenComida() {
        indice = find(this.almacenes,COMIDA,3)
        return this.almacenes[indice]
    }

    public getAlmacenMadera() {
        indice = find(this.almacenes,MADERA,3)
        return this.almacenes[indice]
    }

    public getAlmacenPiedra() {
        indice = find(this.almacenes,PIEDRA,3)
        return this.almacenes[indice]
    }

    public getAlmacenHierro() {
        indice = find(this.almacenes,HIERRO,3)
        return this.almacenes[indice]
    }
}