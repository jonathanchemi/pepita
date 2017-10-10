
object pepita {
	var energia = 100
	var location = sanNicolas
	
	method volar(distancia) {
		energia -= self.energiaNecesariaPaVolar(distancia)
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
	method puedeIrA (lugar) {
		var distancia = self.calcularDistancia(lugar)
		return energia >= self.energiaNecesariaPaVolar(distancia)
	}
	
	method calcularDistancia(destino) {
		var distancia = location.km() - destino.km()
		return distancia.abs()
	}
	method energiaNecesariaPaVolar(distancia){
		return distancia+10
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

