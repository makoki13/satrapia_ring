//load "clsPunto.ring"

class Mapa {
  puntos = []

  func addPunto (punto) { 
    add(puntos, punto); 
  }

  func verPuntos() {
    see this.puntos[1].getX()
  }
}
