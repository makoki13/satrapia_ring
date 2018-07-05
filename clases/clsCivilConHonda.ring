load "../clsUnidadMilitar.ring"

class CivilConHonda from UnidadMilitar {
	func constructor (vidaInicial, dañoInflingido, fuerza, moral) {
    	super.constructor( 1001, 'Civil con honda', vidaInicial, dañoInflingido, fuerza, moral, 1, 10);
  }

	func getID () { return super.getid() }
}
