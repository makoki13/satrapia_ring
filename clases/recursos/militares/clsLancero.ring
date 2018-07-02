load "../clsUnidadMilitar.ring"

class Lancero from UnidadMilitar {
	func constructor (vidaInicial, dañoInflingido, fuerza, moral) {
    	super.constructor( 1004, 'Lancero', vidaInicial, dañoInflingido, fuerza, moral, 15, 7);
  }

	func getID () { return super.getid() }
}
