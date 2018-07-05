load "../clases/clsProductor.ring"
load "../clases/clsPunto.ring"
load "../clases/recursos/clsRecurso.ring"

see "Satrapia Ring . Test Productor" + nl

p = new Productor

posicion = new Punto
posicion { x=10 y=13 }
cantidadInicial = 2000
cantidadMaxima = 10000
ratioProduccion = 1

p.constructor(posicion, ORO, cantidadInicial, cantidadMaxima, ratioProduccion)

see p.getStock() + nl

p.extrae(1500)

see p.getStock() + nl