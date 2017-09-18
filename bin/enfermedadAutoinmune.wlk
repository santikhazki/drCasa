
class EnfermedadAutoinmune {
	var nombre = null
	var cantidadDeCelulasQueAmenaza = 0
	var diasDeInfeccion = 0
	
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
		
	method destruirCelulasAmenazadas(unaPersona){
		unaPersona.destruirCelulas(cantidadDeCelulasQueAmenaza)
	}
	
	method esAgresiva(unaPersona){
	 return diasDeInfeccion > 30
	}
	
	method pasarUnDia(unaPersona){
		self.destruirCelulasAmenazadas(unaPersona)
		diasDeInfeccion += 1
	}
	
	method disminuirCelulasQueAmenaza(unaCantidad){
		cantidadDeCelulasQueAmenaza -= unaCantidad
	}
}