class Provincia {
    idProvincia 
    nombreProvincia 
    jugador 
    imperioProvincia
    satrapia // boolean        
    tribu //boolean

    func constructor (id, nombre, jugador, imperio, satrapia, tribu) {
        this.idProvincia = id
        this.nombreProvincia = nombre
        this.jugador = jugador
        this.imperioProvincia = imperio
        this.satrapia = satrapia
        this.tribu = tribu
    }

    func getID() { return this.id }    
    func getNombre() { return this.nombre}
    func getLider() { return this.lider }
    func getImperio() { return this.imperio }
    func esSatrapia() { return this.satrapia }
    func esTribu() { return this.tribu }
}
