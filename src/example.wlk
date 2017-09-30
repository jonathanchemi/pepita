object pepita {
	var energia = 100

	method volar(distancia) {
		energia -= ( 10 + distancia )
	}
	method comer(comida) {
		energia += ( 4 * comida )
	}
	method energia() {
		return energia
	}
} 
