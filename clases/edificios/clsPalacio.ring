load "../clsEdificio.ring"
load "../clsProductor.ring"

class Palacio From Edificio {
    id nombre capital dispatcher

    recaudador // Extractor
    crecimientoDemografico // Extractor
    impuestos // Productor
    alojamientos // Productor

    almacen // Almacen para el oro
    poblacion // Almacen para la población

    func constructor (id, nombre, capital, dispatcher, Parametros) {
        super.constructor (id, nombre, TipoEdificio['PALACIO'], capital.getPosicion(), 0, 0)
        this.capital = capital
        this.dispatcher = dispatcher

        this.capital.setPalacio(this)

        let cantidadInicial = 2;
        
        this.impuestos = new Productor ( null, ORO, 10, 10, 1);        
        this.almacen = new Almacen ( 66, 'Deposito de oro', ORO, capital.getPosicion(), 1_000_000);        
        this.almacen.addCantidad(Parametros.oroInicial);
        /* PENDIENTE Extractor, Dispatcher */
        this.recaudador = new Extractor (this.impuestos, this.almacen, cantidadInicial);
        this.disp.addTareaRepetitiva(this, 'recaudaImpuestos', 1);

        cantidadInicial = 50; const cantidadMaxima = 1000;
        this.alojamientos = new Productor ( null, POBLACION, cantidadInicial, cantidadMaxima, 1);
        this.poblacion = new Almacen ( 67, 'Población', POBLACION, capital.getPosicion(), cantidadMaxima);
        this.crecimientoDemografico = new Extractor (this.alojamientos, this.poblacion, cantidadInicial);
        this.disp.addTareaRepetitiva(this, 'realizaCenso', 1);
        */
    }

    /* PENDIENTE Almacen, Extractor
    func recaudaImpuestos ( ) {
        const cantidad = this.recaudador.getCantidad()
        this.almacen.addCantidad (cantidad)
    }

    func realizaCenso ( ) {
        const cantidad = this.crecimientoDemografico.getCantidad()
        this.poblacion.addCantidad (cantidad)
    }

    func getOroActual() { return this.almacen.getCantidad() }
    func getPoblacionActual() { return this.poblacion.getCantidad() }

    func getAlmacen ()  { return this.almacen; }

    func gastaOro(cantidad: number) {
        const cantidadActual = this.almacen.getCantidad();
        if ( cantidadActual < cantidad ) {cantidad = cantidadActual; }
        this.almacen.restaCantidad(cantidad);
        return cantidad;
    }

    func entraOro(cantidad: number) {
        this.almacen.addCantidad (cantidad);
    }
    */
}