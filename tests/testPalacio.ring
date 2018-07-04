load "../clases/edificios/clsPalacio.ring"

palacio = new palacio

id = 1
nombre = 'Palacio de Makoki'

capital = new Capital
idCapital = 1
nombreCapital = 'Capital del imperio'

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

punto = new Punto
punto  { x=0 y=0}

capital.constructor(idCapital, nombreCapital, provincia, punto)

parametros = new Parametros

palacio.constructor(id, nombre, capital, dispatcher, _parametros)