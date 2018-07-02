load "clases/clsTarea.ring"
load "clases/clsJugador.ring"

see "Satrapia Ring" + nl

/*
t = new Tarea
j = new Jugador
*/

j = new Jugador

j.setnombre('Makoki');

see j.getnombre() + nl

t = new Tarea

t {
    addTask ( j.myfunction )
    runTask()
}

/*
t {
    constructor ( j.miFuncion )
    execfuncion()
}

t.constructor(f)

t.execfuncion()
*/
