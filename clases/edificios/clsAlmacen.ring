/* HECHO! */
class Almacen {
    id nombre tipo posicion cantidad maxCantidad

    func constructor (id, nombre, tipo, posicion, maxCantidad) {
        this.id = id
        this.nombre = nombre
        this.tipo = tipo
        this.posicion = posicion
        this.cantidad = 0
        this.maxCantidad = maxCantidad        
    }

    func addCantidad (cantidad) {
        this.cantidad = this.cantidad + cantidad
    }

    func restaCantidad (cantidad) {
        if (cantidad > this.cantidad)
            cantidad = this.cantidad
            this.cantidad = 0
        else 
            this.cantidad -= cantidad
        ok
        return cantidad
    }

    func getTipoRecurso() { return this.tipo }

    func getCantidad() { return this.cantidad }

    func getPosicion() { return this.posicion }

    func getMaxCantidad() { return this.maxCantidad }
}