
object pepita {
	var energia = 100
	var km = 0
	var location = sanNicolas
	
	method volar(distancia) {
		energia -= ( 10 + distancia )
	}
	
	method comer(comida) {
		energia += ( 4 * comida )
	}
	method energia() {
		return energia
	}
	method irA(lugar) {
		//1. calcular la distancia a volar
		var distancia = self.calcularDistancia(lugar)
		//2. volar distancia x
		self.volar(distancia)
		//3. cambiar locacion
		location = lugar
	}
	
	method calcularDistancia(destino) {
		var distancia = location.km() - destino.km()
		return distancia.abs()
	}
	
	method calcularEnergia(destino) {
	var energiaNecesaria = self.energia() - (location.km() - destino.km() -10)
	return energiaNecesaria.abs()
	
	}
}

object sanNicolas {
	var km = 220

	method km() {
		return km
	}
}

object escobar {
	var km = 70

	method km() {
		return km
	}
}

