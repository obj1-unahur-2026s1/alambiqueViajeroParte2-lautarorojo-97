import elAlambiqueViajero.*

object antiguallaBlindada{

    const gangsters = ["Mafioso", "Ricky", "Rocky", "Pepe", "Tito", "Rulo", "Cacho"]
    method subirGangsters(nombre) {gangsters.add(nombre)}
    method bajarGangsters(nombre) {gangsters.remove(nombre)}
    method velocidad() = gangsters.sum({g => g.size()})
    method puedeFuncionar() = gangsters.size().even() // Ejemplo: si son pares
    method rapido() = self.velocidad() > 50
    method desgaste() {
        if (!gangsters.isEmpty()) {
            gangsters.remove(gangsters.last()) // Se baja el último
        }
    }
    method patenteValida() = true
}

object pierreNodoyuna {
	method rapido() = true
	method puedeFuncionar() = true
	method desgaste() { }
	method patenteValida() = false 
	
	method tiempoEnRecorrer(distancia) {
		return (distancia / 10) + 100 
	}
}

object profesorLocovich {
	const formasPosibles = [alambiqueVeloz, antigualla, chatarra, moto]
	var formaActual = alambiqueVeloz
	
	method cambiarForma() {
		formaActual = formasPosibles.any() 
	}
	
	method rapido() = formaActual.rapido()
	method puedeFuncionar() = formaActual.puedeFuncionar()
	method desgaste() = formaActual.desgaste()
	method patenteValida() = formaActual.patenteValida()
    method tiempoEnRecorrer(distancia) = formaActual.tiempoEnRecorrer(distancia)
}

object centroInscripcion {
    var sedeActual = paris
    const inscriptos = #{}
    const rechazados = #{}

    method cambiarSede(nuevaSede) {
        sedeActual = nuevaSede
        const todos = inscriptos.union(rechazados)
        inscriptos.clear()
        rechazados.clear()
        todos.forEach({ vehiculo => self.inscribir(vehiculo) })
    }

    method inscribir(vehiculo) {
        if (sedeActual.puedeLlegar(vehiculo)) {
            inscriptos.add(vehiculo)
        } else {
            rechazados.add(vehiculo)
        }
    }    
}