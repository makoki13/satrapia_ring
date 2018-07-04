class Productor {
    punto recurso cantidadInicial cantidadMaxima ratioProduccion
    
    func constructor (posicion, recurso, cantidadInicial, cantidadMaxima, ratioProduccion) {
        this.punto = posicion
        this.recurso = recurso
        this.cantidadInicial = cantidadInicial
        this.cantidadMaxima = cantidadMaxima
        this.ratioProduccion = ratioProduccion
        if (this.cantidadInicial > this.cantidadMaxima) this.cantidadInicial = this.cantidadMaxima ok
    }

    func extrae ( cantidad )  {        
        cantidad *= this.ratioProduccion // Para penalizaciones y bonus

        // Los productores con cantidadMaxima = 0 son inagotables.
        if this.cantidadMaxima = 0
            return cantidad 
        ok
    
        if (cantidad > this.cantidadInicial ) 
            cantidad = this.cantidadInicial
            this.cantidadInicial = 0
        else 
            this.cantidadInicial -= cantidad
        ok
        return cantidad
    }

    func getStock() { return this.cantidadInicial }
}