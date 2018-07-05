/ ***** HECHO! */
class Ejercito {
    id
    nombre
    posicion // Punto
    ciudad // Localidad
    dispatcher // Dispatcher
    
    func constructor (id, nombre, posicion, ciudad, dispatcher) {
        this.id = id
        this.nombre = nombre
        this.posicion = posicion
        this.ciudad = ciudad
        this.dispatcher = dispatcher
    }

    func getPosicion() { return this.posicion }
}
