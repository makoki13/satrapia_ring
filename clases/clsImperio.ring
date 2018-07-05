class Imperio {
    idImperio 
    nombreImperio 
    lider // Jugador    
    func constructor (id, nombre, lider) {
        this.idImperio = id
        this.nombreImperio = nombre
        this.lider = lider        
    }

    func getNombre() { return this.nombre }
}
