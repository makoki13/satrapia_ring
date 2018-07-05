// ***** TESTEO MÁS PROFUNDO. TIMER
load "stdlib.ring"

class Tareas {
    clase 
    funcion 
    vencimiento // Segundos
    delta 
    parametros

    func constructor(clase, funcion, delta, parametros) {
        this.clase = clase
        this.funcion = funcion
        this.vencimiento = EpochTime( Date(), Time() ) + delta
        this.delta = delta
        this.parametros = parametros
    }

    func getVencimiento() {
        return this.vencimiento
    }

    func setVencimiento () {
        this.vencimiento = this.vencimiento + this.delta        
    }

    func getNombreFuncion() { return this.funcion }

    func execFuncion() {
        //Pendiente
        call this.funcion()
    }
}

class Dispatcher {
    listaDeTareas = [] // List

    func constructor() {
        this.listaDeTareas = []

        /* Hay que poner aqui el timer */
    }

    func addTareaRepetitiva(c, f, tiempo, param) {
        t = new Tareas
        t.constructor(c, f, tiempo, param)
        Add(this.listaDeTareas,t)
    }

    func ejecuta() {
        horaActual = EpochTime( Date(), Time() )
        numTareas = Len(this.listaDeTareas)

        if numTareas > 0
            for i = 1 to numTareas
                see "T1: " + this.listaDeTareas[i].getVencimiento() + " . " + horaActual + nl 
                if this.listaDeTareas[i].getVencimiento() > horaActual 
                    this.listaDeTareas[i].setVencimiento()
                    rt = this.listaDeTareas[i].execFuncion()
                    if rt = -1
                        del(this.listaDeTareas,i)
                    ok
                ok
            next
        ok
    }  
}