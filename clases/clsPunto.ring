TipoTerreno = ['SIN DEFINIR','PRADO','BOSQUE', 'MAR', 'AGUA POCO PROFUNDA']

class Punto {
    tipoDeTerreno // TipoTerreno;
    region // number // Geografia fisica
    provincia // number // Geografia politica
    edificio // TipoEdificio

    x y z

    func sonIguales(p, q)  {
        return ( (p.getX() = q.getX()) && (p.getY() = q.getY()) );
    }

    constructor(x, y, z) {
        this.x = x
        this.y = y
        this.z = z
        this.edificio = null;
    }

    func setAltura (z) { this.z = z }

    func setEdificio(e) { this.edificio = e }

    func getX() { return this.x }
    func getY() { return this.y }
    func getEdificio() { return this.edificio }
    func getTerreno() { return this.tipoDeTerreno }
}
