import habitantes.*

object rodrigo {
    var estaEnTurnoManiana = true
    var tutor = null
    var resisteAltasTemperaturas = false

    method trabajaAlaManiana() = estaEnTurnoManiana
    method sabeNadar() = tutor.sabeNadar()
    method resisteAltasTemperaturas() = resisteAltasTemperaturas
    method experiencia() = 0

    method cambiarDeTurno() {
        estaEnTurnoManiana = !estaEnTurnoManiana
    }

    method asignarTutor(unTrabajador) {
        tutor = unTrabajador
    }

    method aprenderResistenciaAtemperaturas() {
        resisteAltasTemperaturas = true
    }

    method cuidar(unHabitante) {
        if(unHabitante.puedeSerCuidadoPor(self)) {
            unHabitante.alimentar()
            unHabitante.entrenar()
        }
    }
}

object laura {
    var sabeNadar = false

    method trabajaAlaManiana() = false
    method sabeNadar() = sabeNadar
    method resisteAltasTemperaturas() = true

    method aprenderAnadar() {
        sabeNadar = true
    }

    method cuidar(unHabitante) {
        if(unHabitante.puedeSerCuidadoPor(self)) {
            unHabitante.alimentar()
            unHabitante.entrenar()
        }
    }
}

object german {
    method trabajaAlaManiana() = true
    method sabeNadar() = true
    method resisteAltasTemperaturas() = true
    method experiencia() = 15

    method enseniarAnadar(unTrbajador) {
        unTrbajador.aprenderAnadar()
    }

    method enseniarAresistirTemperaturas(unTrabajador) {
        unTrabajador.aprenderResistenciaAtemperaturas()
    }

    method cuidar(unHabitante) {
        if(unHabitante.puedeSerCuidadoPor(self)) {
            unHabitante.alimentar()
            unHabitante.entrenar()
        }
    }
}

object jimena {
    var resisteAltasTemperaturas = false
    var trajeIgnifugo = false

    method trabajaAlaManiana() = false
    method sabeNadar() = true
    method resisteAltasTemperaturas() = resisteAltasTemperaturas || trajeIgnifugo

    method ponerTraje() {
        trajeIgnifugo = true
    }

    method sacarTraje() {
        trajeIgnifugo = false
    }

    method aprenderResistenciaAtemperaturas() {
        resisteAltasTemperaturas = true
    }

    method cuidar(unHabitante) {
        if(unHabitante.puedeSerCuidadoPor(self)) {
            unHabitante.alimentar()
            unHabitante.entrenar()
        }
    }
}