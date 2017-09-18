
class EnfermedadInfecciosa {
	var nombre = null
	var cantidadDeCelulasQueAmenaza = 0
	
	constructor(titulo,cantidad){
		nombre = titulo
		cantidadDeCelulasQueAmenaza = cantidad
	}
	
	method cantidadDeCelulasQueAmenaza(){
		return cantidadDeCelulasQueAmenaza
	}
	
	method cantidadDeCelulasQueAmenaza(unaCantidad){
		cantidadDeCelulasQueAmenaza = unaCantidad
	}
	
	method gradosQueAumenta(unaPersona){
	unaPersona.aumentarTemperatura(cantidadDeCelulasQueAmenaza / 1000)
	}
	
	method reproducirseASiMisma(){
		cantidadDeCelulasQueAmenaza *= 2
	}
	
	method esAgresiva(unaPersona){
		return cantidadDeCelulasQueAmenaza > (unaPersona.cantidadDeCelulas() * 0.1)
	}
	
	method pasarUnDia(unaPersona){
		self.gradosQueAumenta(unaPersona)
	}
	
	method disminuirCelulasQueAmenaza(unaCantidad){
		cantidadDeCelulasQueAmenaza -= unaCantidad
	}

}