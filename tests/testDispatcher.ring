load "../clases/clsDispatcher.ring"
load "../clases/clsJugador.ring"

see "Satrapia Ring . Test Dispatcher" + nl

disp = new Dispatcher

disp.constructor()

j = new Jugador

j.setnombre('Makoki');

see j.getnombre() + nl

disp {
    a = 'maks'
    addTareaRepetitiva(j , j.myfunction, 3, '')   
}

//Hay que quitar esta instrucción: El timer está en el constructor.
disp.ejecuta()