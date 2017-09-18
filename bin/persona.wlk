/** First Wollok example */
class Persona {
	var cantidadDeCelulas = 10
  	var temperatura = 36
  	var enfermedades = #{}

  constructor(numCelulas,grados,listaDeEnfermedades){
  	cantidadDeCelulas = numCelulas
  	temperatura = grados
  	enfermedades = listaDeEnfermedades
  	
  }
  
  method enfermedades(){
  	return enfermedades
  }
  
  method enfermarse(unaEnfermedad){
  	enfermedades.add(unaEnfermedad)
  }
  
  method destruirCelulas(cantidadAfectada){
    cantidadDeCelulas -= cantidadAfectada
  }

  method aumentarTemperatura(grados){
    temperatura = 45.min(temperatura + grados)
  }

  method cantidadDeCelulas(){
    return cantidadDeCelulas
  }

  method pasarUnDia(){
    enfermedades.forEach({ enfermedad => enfermedad.pasarUnDia(self) })
  }
  
  method laEnfermedadQueMasCelulasAfecta(){
  	return enfermedades.max({ unaEnfermedad => unaEnfermedad.cantidadDeCelulasQueAmenaza() })
  }
  
  method lasEnfermedadesAgresivasDeUnaPersona(){
  	return enfermedades.filter({ enfermedad => enfermedad.esAgresiva(self)})
  }
  
  method cantidadDeCelulasQueAfectanLasEnfermedadesAgresivas(){
  	return self.lasEnfermedadesAgresivasDeUnaPersona().sum({ enfermedad => enfermedad.cantidadDeCelulasQueAmenaza() })
  }
  
 	

}
	