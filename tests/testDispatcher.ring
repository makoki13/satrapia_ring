load "./clases/clsTarea.ring"
load "./clases/clsJugador.ring"

t = new Tarea
j = new Jugador


j = new Jugador

j.setnombre('Makoki');

see j.getnombre() + nl

t {
    addTask ( j.myfunction )
    runTask()
}