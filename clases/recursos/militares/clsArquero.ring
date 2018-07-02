load "../clsUnidadMilitar.ring"

class Arquero from UnidadMilitar {
	func constructor (vidaInicial, dañoInflingido, fuerza, moral) {
    	super.constructor( 1003, 'Arquero', vidaInicial, dañoInflingido, fuerza, moral, 5, 10);
  }

	func getID () { return super.getid() }
}
