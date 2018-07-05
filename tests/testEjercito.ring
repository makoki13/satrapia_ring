load "../clases/recursos/clsEjercito.ring"
load "../clases/clsPunto.ring"
load "../clases/clsLocalidad.ring"
load "../clases/clsProvincia.ring"
load "../clases/clsJugador.ring"
load "../clases/clsImperio.ring"
load "../clases/clsDispatcher.ring"

see "Satrapia Ring . Test Ejercito" + nl

ejercito = new Ejercito

id = 1
nombre = 'Ejercito makoki'
posicion = new Punto posicion { x = 10 y = 10 }

ciudad = new Localidad

idLocalidad = 1
nombreLocalidad = 'Beniopa'
esCapital = true

provincia = new Provincia
idProvincia = 1
nombreProvincia = 'Provincia de Makoki'

jugador = new Jugador
idJugador = 1
idUsuario = 1
nombre='El makoki'
tipo = TipoJugador[1];
jugador.constructor(id, idUsuario, nombre, tipo)

imperio = new Imperio
imperio.constructor(1, 'Imperio Makoki', jugador)

satrapia = false
tribu = false
provincia.constructor(idProvincia, nombreProvincia, jugador, imperio, satrapia, tribu)

ciudad.constructor (idLocalidad, nombreLocalidad, esCapital, provincia, 1000, posicion)

dispatcher = new dispatcher
dispatcher.constructor()

ejercito.constructor(id, nombre, posicion, ciudad, dispatcher) 

see ejercito.getPosicion().getX() + nl