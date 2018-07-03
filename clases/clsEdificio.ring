/* PENDIENTE TESTEAR CUANDO CAPITAL ESTE TESTEADO */

TipoEdificio = ['PALACIO','SILOS','CUARTEL','MERCADO','EMBAJADA','TABERNA','CENTRO DE INVESTIGACION','GRANJA','MINA DE ORO','SERRERIA','MINA DE HIERRO','CANTERA DE PIEDRA','EJERCITO']

class Edificio {
    id nombre tipo 
    punto
    status = 'Sin actividad'
    hayEnvioEnMarcha
    costeConstruccion
    tiemposConstruccion

    func constructor (id, nombre, tipo, capital, costeConstruccion, tiempoConstruccion) {
        this.id = id
        this.nombre = nombre
        this.tipo = tipo
        this.capital = capital
        this.costeConstruccion = costeConstruccion
        this.tiempoConstruccion = tiempoConstruccion
    }

    func getID() { return this.id }
    func getTipo() { return this.tipo }
    func getPosicion() { return this.capital.getPosicion() }
    func setStatus( mensaje ) { this.status = mensaje }
    func getNombre() { return this.nombre }
    func getStatus() { return this.status }

    func getCosteConstruccion() { return this.costeConstruccion }
    func getTiempoConstruccion() { return this.tiemposConstruccion }
}

