// ***** TERMINADO
class Localidad {
    id nombre esCapital provincia numeroDeHabitantes posicion
    
    func constructor (id, nombre, esCapital, provincia, numeroDeHabitantes, posicion) {
        this.id = id
        this.nombre = nombre
        this.esCapital = esCapital
        this.provincia = provincia
        this.numeroDeHabitantes = numeroDeHabitantes
        this.posicion = posicion
    }

    func getPosicion() { return this.posicion }
    func getNombre() { return this.nombre }
}