// ***** definir y añadir palacio, centro de invstigacion, silos, cuartel, mercado, embajada, taberna, mina de oro, serreria, cantera y mina de hierro

load "../clases/clsImperio.ring"
load "../clases/clsProvincia.ring"
load "../clases/clsCapital.ring"
load "../clases/clsJugador.ring"
load "../clases/clsPunto.ring"

see "Satrapia Ring . Test Capital" + nl

emperador = new Jugador
emperador.setnombre('Makoki');

satrapa = new Jugador
satrapa.setnombre('Ausias');

jefe = new Jugador
jefe.setnombre('Saisua');

imperio = new Imperio
imperio.constructor(1, 'Imperio Makoki', emperador)

/* Definimos un imperio */

provincia1 = new provincia
provincia1.constructor (1, 'Valencia', null, imperio, false, false)

/* Definimos una satrapia */

provincia2 = new provincia
provincia2.constructor (2, 'Alicante', satrapa, imperio, true, false)

/* Definimos una tribu */

provincia3 = new provincia
provincia3.constructor (3, 'Albacete', jefe, null, false, null)

see imperio.getNombre() + nl
see provincia1.getNombre() + nl
see provincia2.getNombre() + nl
see provincia3.getNombre() + nl

/* Definimos la capital del imperio */
punto = new Punto
punto  { x=0 y=0}
gandia = new capital
gandia.constructor(1, 'Gandia', provincia1, punto )

see "Capital: " + gandia.getNombre() + nl