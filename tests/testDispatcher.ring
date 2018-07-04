
/*
load "../clases/clsTarea.ring"
load "../clases/clsJugador.ring"

t = new Tarea
j = new Jugador

j.setnombre('Makoki');

see j.getnombre() + nl

t {
    a = 'maks'
    addTask ( j.myfunction )
    runTask()
}
*/




load "../clases/clsDispatcher"
load "../clases/clsJugador.ring"

disp = new Dispatcher
j = new Jugador

j.setnombre('Makoki');

see j.getnombre() + nl

disp {
    a = 'maks'
    addTareaRepetitiva(j , j.myfunction, 3, '')   
}

disp.ejecuta()