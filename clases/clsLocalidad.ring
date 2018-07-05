// ***** TERMINADO
class Localidad {
    idLocalidad 
    nombreLocalidad
    esCapital 
    provincia 
    numeroDeHabitantes 
    posicionLocalidad
    
    func constructor (id, nombre, esCapital, provincia, numeroDeHabitantes, posicion) {
        this.idLocalidad = id
        this.nombreLocalidad = nombre
        this.esCapital = esCapital
        this.provincia = provincia
        this.numeroDeHabitantes = numeroDeHabitantes
        this.posicionLocalidad = posicion
    }

    func getPosicion() { return this.posicion }
    func getNombre() { return this.nombre }  
}