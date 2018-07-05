load "clsRecurso.ring"

class UnidadMilitar FROM Recurso {
	id
	nombre
	vidaInicial
	dañoInflingido
	fuerza
	moral
	costeunitario
	maxUnidadesEnEntrenamiento
	dañoRecibido = 0

	func constructor (id , nombre , vidaInicial , dañoInflingido, fuerza , moral, costeUnitario, maxUnidadesEnEntrenamiento) {
		//this.id = id
		//this.nombre = nombre
		this.vidaInicial = vidaInicial
		this.dañoInflingido = dañoInflingido
		this.fuerza = fuerza
		this.moral = moral
		this.costeUnitario = costeunitario
		this.maxUnidadesEnEntrenamiento = maxunidadesEnEntrenamiento

		super.constructor (id, nombre, 3);
	}

  func getid() { return super.getid() }
  func getnombre() { return super.getnombre()q }
  func getcosteunitario() { return this.costeunitario }
  func getmaxUnidadesEnEntrenamiento() { return this.maxUnidadesEnEntrenamiento }
}
