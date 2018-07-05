TipoJugador = [ 'SIN_JUEGO' , 'EMPERADOR' , 'SATRAPA' , 'JEFE_DE_TRIBU' ]
Class Jugador
	idJugador
	idUsuario
	nombreJuego
	tipo

	myfunction = func() {
        ? a
    }

	func constructor (id, idUsuario, nombre, tipo) {
		this.idJugador = id
		this.idUsuario = idUsuario
		this.nombreJuego = nombre
		this.tipo = tipo
	}
	
	func setidJugador id
		self.idJugador = id

	func getidJugador
		return self.idJugador

	func setidUsuario id
		self.idUsuario = id

	func getidUsuaro
		return self.idUsuario
	
	func setnombre nombre
		self.nombre = nombre

	func getnombre
		return self.nombre

	func settipo tipo
		self.tipo = tipo

	func gettipo
		return self.tipo

	func gettipoJugador
		return TipoJugador[self.tipo]
