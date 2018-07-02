TipoRecurso = ['NATURAL','FABRICADO','MILITAR']

ORO = New Recurso { id = 1 nombre = 'ORO' tipo =  1 }
COMIDA = New Recurso { id = 2 nombre = 'COMIDA' tipo =  1 }
MADERA = New Recurso { id = 3 nombre = 'MADERA' tipo =  1 }
PIEDRA = New Recurso { id = 4 nombre = 'PIEDRA' tipo =  1 }
HIERRO = New Recurso { id = 5 nombre = 'HIERRO' tipo =  1 }

Class Recurso {
	id
	nombre
	tipo

	func constructor (id, nombre, tipo) {
		this.id = id
	    this.nombre = nombre
		this.tipo = tipo
	}

	func getid() 
		return self.id

	func getnombre() 
		return self.nombre
	
}
