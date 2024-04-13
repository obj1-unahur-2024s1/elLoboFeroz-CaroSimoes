object feroz{
	var peso =10
	var energia = 100
	method estaMuerto(){
		return energia <1
	}
	method reducirEnergia(cantidad){
		energia = energia - cantidad
	}
	method estaSaludable(){
		return peso.between(20, 150)
	}
	method aumentarPeso(cantidad){
		peso = peso + cantidad
	}
	method disminuirPeso(cantidad){
		peso = peso - cantidad
	}
	method sufrirCrisis(){
		peso = 10
	}
	method comer(comida){
		peso = peso + comida.cuantoPesa() * 0.1
	}
	method correr(){
		self.disminuirPeso(1)
	}
	method soplarCasa(casa){
		self.disminuirPeso(casa.pesoTotalOcupantes() + casa.resistencia()) 
	}
}

object chanchito {
	method cuantoPesa() = 5
}

object casaPaja{
	var ocupantes = 1
	method pesoTotalOcupantes() {return chanchito.cuantoPesa() * self.ocupantes()}
	method ocupantes(){ return ocupantes}
	method aumentarOcupantes(){}
	method huirACasa(casa){
		casa.aumentarOcupantes(ocupantes)
		ocupantes = 0
	}
	method resistencia() = 0
}

 object casaMadera{
	var ocupantes = 1
	method pesoTotalOcupantes() {return chanchito.cuantoPesa() * self.ocupantes()}
	method ocupantes(){ return ocupantes}
	method aumentarOcupantes(cantidad){ocupantes= ocupantes + cantidad}
	method huirACasa(casa){
		casa.aumentarOcupantes(ocupantes)
		ocupantes = 0
	}
	method resistencia() = 5
}
 
 object casaLadrillo{
	var ocupantes = 1
	method cantLadrillos() = 50
	method pesoTotalOcupantes() {return chanchito.cuantoPesa() * self.ocupantes()}
	method ocupantes(){ return ocupantes}
	method aumentarOcupantes(cantidad){ocupantes= ocupantes + cantidad}
	method huirACasa(casa){
		casa.aumentarOcupantes(ocupantes)
		ocupantes = 0
	}
	method resistencia(){
		return 2 * self.cantLadrillos()
	}
}

object cazador{
	method cuantoPesa() = 70	
	method crearCrisisAlLobo(){
		feroz.sufrirCrisis()
	}
	method matarLobo(){
		feroz.reducirEnergia(100)
	}
}

object caperucita{
	var cantManzanas = 6
	var cuantoPesa = 61.2
	method pesoManzana() =0.2
	method perderManzana(){
		cantManzanas = cantManzanas - 1
		cuantoPesa = cuantoPesa - 0.2
	}
	method cuantoPesa() {return cuantoPesa}
}

object abuelita {
	method cuantoPesa() =50
}


