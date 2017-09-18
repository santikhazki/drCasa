import enfermedadAutoinmune.*
import enfermedadInfecciosa.*
import persona.*

class Medico {
	var cantMedicamentoSuministrado
	var medicoSubordinado
	
	constructor(cantidad,subordinado){
		cantMedicamentoSuministrado = cantidad
		medicoSubordinado = subordinado //sdsdsdssfsdf
	}
	
	method cantMedicamentoSuministrado(unValor){
		cantMedicamentoSuministrado = unValor
	}
	
	method cantMedicamentoSuministrado(){
		return cantMedicamentoSuministrado
	
	}
	
	method atenuarEnfermedad(unaEnfermedad){
		unaEnfermedad.disminuirCelulasQueAmenaza(cantMedicamentoSuministrado * 15)
	}
	
	method antenderUnPaciente(unaPersona){
		unaPersona.enfermedades().forEach({ enfermedad => self.atenuarEnfermedad(enfermedad)})
	}
	
	



}