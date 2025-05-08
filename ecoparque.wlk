import habitantes.*
import trabajadores.*

object ecoparque {
    const habitantes = #{dragon, unicornio, sirena, fenix, gargola}
    const trabajadores = #{german, laura, jimena}

    method habitantes() = habitantes
    method trabajadores() = trabajadores

    method contratarTrabajador(unTrabajador) {
        trabajadores.add(unTrabajador)
    }

    method despedirTrabajador(unTrabajador) {
        trabajadores.remove(unTrabajador)
    }

    method despedirTodosLosTrabajadores() {
        trabajadores.clear()
    }

    method contratarVariosAlaVez(conjuntoDeTrabajadores) {
        trabajadores.addAll(conjuntoDeTrabajadores)
    }

    // Pueden retornar valores con el =
    method esGrande() = trabajadores.size() > 3

    method necesitaTrabajadores() = trabajadores.isEmpty()

    // O pueden retornar valores con el return
    method puedeCuidarA(unHabitante) {
        return trabajadores.any({unTrabajador => unHabitante.puedeSerCuidadoPor(unTrabajador)})
    }

    method trabajadoresQuePuedenCuidarA(unHabitante) {
        return trabajadores.filter({unTrabajador => unHabitante.puedeSerCuidadoPor(unTrabajador)})
    }

    method cuantosAnimalesViejosHay() {
        return habitantes.count({unHabitante => !unHabitante.esJoven()})
    }

    method cuidarDe(unHabitante) {
        trabajadores.find({unTrabajador => unHabitante.puedeSerCuidadoPor(unTrabajador)}).cuidar(unHabitante)
    }

    method cuidarAtodos() {
        habitantes.forEach({
            unHabitante => self.cuidarDe(unHabitante)
        })
    }

    method pasarElDia() {
        self.cuidarAtodos()
        habitantes.forEach({unHabitante => unHabitante.dormir()})
    }

    method habitanteMasViejo() = habitantes.max({ unHabitante => unHabitante.edad() })

    method habitanteMasJoven() = habitantes.min({ unHabitante => unHabitante.edad() })

    method realizarTallerDeNatacion() {
        if(trabajadores.count({t => t.sabeNadar()}) >= trabajadores.size()/2) {
            trabajadores.forEach({
                unTrabajador => if(!unTrabajador.sabeNadar()) {unTrabajador.aprenderAnadar()}
            })
        }
    }

    method realizarTallerDeResistenciaAlFuego() {
        if(trabajadores.any{t => t.experiencia() > 10}) {
            trabajadores.forEach({
                unTrabajador => if(!unTrabajador.resisteAltasTemperaturas()) {unTrabajador.aprenderResistenciaAtemperaturas()}
            })
        }
    }
}