import trabajadores.*

object dragon {
    var temperaturaCorporal = 200

    method temperaturaCorporal() = temperaturaCorporal
    method edad() = 90

    method esDiurna() = true

    method alimentar() {
        temperaturaCorporal += 20
    }

    method entrenar() {
        if(temperaturaCorporal > 100) {
            temperaturaCorporal -= 40
        }
    }

    method dormir() {
        temperaturaCorporal = 200
    }

    method esJoven() = true

    method puedeSerCuidadoPor(unTrabajador) =
        unTrabajador.trabajaAlaManiana() && unTrabajador.resisteAltasTemperaturas()
}

object unicornio {
    var poderMagico = 3
    var estaFeliz = false

    method edad() = 30
    method estaFeliz() = estaFeliz
    method poderMagico() = poderMagico
    method esDiurna() = true

    method alimentar() {
        poderMagico += 1
    }

    method entrenar() {
        if(poderMagico > 5) {
            estaFeliz = true
        }
    }

    method dormir() {
        estaFeliz = !estaFeliz
    }

    method esJoven() = true

    method puedeSerCuidadoPor(unTrabajador) =
        unTrabajador.trabajaAlaManiana()
}

object sirena {
    var habilidadAcuatica = 40

    method habilidadAcuatica() = habilidadAcuatica
    method edad() = 60

    method esDiurna() = false

    method alimentar() {
        habilidadAcuatica *= 1.5
    }

    method nadar(metros) {
        if(habilidadAcuatica != 0) {
            habilidadAcuatica = 0.max(habilidadAcuatica - metros)
        }
    }

    method practicarParaLaBatalla() {
        if(habilidadAcuatica != 0) {
            habilidadAcuatica = 0.max(habilidadAcuatica - 20)
        }
    }

    method entrenar() {
        self.nadar(habilidadAcuatica / 2)
        self.practicarParaLaBatalla()
    }

    method dormir() {
        habilidadAcuatica = 40
    }

    method esJoven() = false

    method puedeSerCuidadoPor(unTrabajador) =
        !unTrabajador.trabajaAlaManiana() && unTrabajador.sabeNadar()
}

object fenix {
    var edad = 180
    var plumajeReluciente = false

    method edad() = edad
    method plumajeReluciente() = plumajeReluciente

    method energia() = if(plumajeReluciente) edad else edad/2

    method esPichon() = edad < 5

    method esJoven() = edad < 150

    method alimentar() {
        if(self.esPichon()) {
            edad += 1
        } else {
            plumajeReluciente = true
        }
    }

    method entrenar() {
        if(!self.esPichon()) {
            edad *= 1.1
            plumajeReluciente = false
        }
    }

    method dormir() {
        plumajeReluciente = false
    }

    method puedeSerCuidadoPor(unTrabajador) =
        unTrabajador.resisteAltasTemperaturas() && (unTrabajador.experiencia() > 5)
}

object gargola {
    var edad = 15
    var estaEnFormaViva = false

    method edad() = edad
    method estaEnFormaViva() = estaEnFormaViva

    method alimentar() {}

    method entrenar() {
        edad -= 1
        estaEnFormaViva = false
    }

    method dormir() {
        edad += 5
    }

    method esJoven() = true

    method puedeSerCuidadoPor(unTrabajador) = 
        if(unTrabajador == laura) true else !unTrabajador.trabajaAlaManiana() && estaEnFormaViva

    method cambiarAformaViva() {
        estaEnFormaViva = true
    }

    method cambiarAformaDeEstatua() {
        estaEnFormaViva = false
    }
}