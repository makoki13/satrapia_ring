load "../clases/clsAlmacen"
load "../clases/clsRecurso"
load "../clases/clsPunto"

see "Satrapia Ring . Test Almacen" + nl

almacen = new Almacen

id = 1
nombre = 'Almacen Makoki'
posicion = new Punto
posicion { x = 10 y = 10}
maxCantidad = 100_000

almacen.constructor (id, nombre, ORO, posicion, maxCantidad)

see "Posicion: " + almacen.getPosicion().getX() + " : " + almacen.getPosicion().getY() + nl

see "Max cantidad: " + almacen.getMaxCantidad() + nl

see almacen.getCantidad() + nl

almacen.addCantidad (50_000)

see almacen.getCantidad() + nl

almacen.restaCantidad (25_000)

see almacen.getCantidad() + nl

see almacen.getTipoRecurso().getnombre() + nl

see "Fin test" + nl