/* PENDIENTE TESTEAR CUANDO LOCALIDAD ESTE TESTEADO */

load "clsLocalidad.ring"

class Capital from Localidad {
  id nombre provincia posicion

  /* Edificios ciudad */
  palacio centroDeInvestigacion silos cuartel mercado embajada taberna
  /* Edificios exteriores */
  minasDeOro granjas serrerias canteras minasDeHierro
  
  func constructor(id, nombre, provincia, posicion) {
    super.constructor(id, nombre, true, provincia, 50, posicion)

    this.minasDeOro = []
    this.granjas = []
    this.serrerias = []
    this.canteras = []
    this.minasDeHierro = []
  }

  func setPalacio (p) { this.palacio = p }
  func getPalacio () { return this.palacio }

  func setCentroDeInvestigacion (c) { this.centroDeInvestigacion = c }
  func getCentroDeInvestigacion () { return this.centroDeInvestigacion }

  func setSilos (s) { this.silos = s }
  func getSilos () { return this.silos }

  func setCuartel (c) { this.cuartel = c }
  func getCuartel () { return this.cuartel }

  func setMercado (m) { this.mercado = m }
  func getMercado () { return this.mercado }

  func setEmbajada (e) { this.embajada = e }
  func getEmbajada () { return this.embajada }

  func setTaberna (t) { this.taberna = t }
  func getTaberna () { return this.taberna }

  func addMinaDeOro(m) { Add(this.minasDeOro,m) }
  func getMinasDeOro() { this.minasDeOro }

  func addGranja(g) { Add(this.granjes,g) }
  func getGranjas() { return this.granjas }

  public addSerreria(s) { Add(this.serrerias,s) }
  public getSerrerias() { return this.serrerias }

  public addCantera(c) { Add(this.canteras,c) }
  public getCanteras() { return this.canteras }

  public addMinaDeHierro(m) { Add(this.minasDeHierro,m) }
  public getMinasDeHierro() { return this.minasDeHierro }
}

