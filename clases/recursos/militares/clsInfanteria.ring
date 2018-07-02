load "../clsUnidadMilitar.ring"

class Infanteria from UnidadMilitar {
	func constructor (vidaInicial, dañoInflingido, fuerza, moral) {
    	super.constructor( 1002, 'Infanteria', vidaInicial, dañoInflingido, fuerza, moral, 10, 10);
  }

	func getID () { return super.getid() }
}
