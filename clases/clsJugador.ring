TipoJugador = [ 'SIN_JUEGO' , 'EMPERADOR' , 'SATRAPA' , 'JEFE_DE_TRIBU' ]
Class Jugador
	idJugador = 0
	idUsuario = 0
	nombre = ''
	tipo = 0
	
    myfunction = func() {
		nombre = 'ppp'
        ? nombre
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
