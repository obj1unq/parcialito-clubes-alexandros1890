
class Clubes {
	var property actividades = #{}
	var property equipos=#{}
	var property perfil=profesional
	var property sanciones 
	
	method cambiarPerfil(unPerfil){
		perfil=unPerfil
	}
	
		
}

object profesional{
	
	method perfil(){return self}
}
object comunitario{
	method perfil(){return self}
}
object tradicional{
	method perfil(){return self}
}

class Equipos {
	
	var property plantel=#{}
	var property capitan
	var property sanciones
	
	method sancionar(){
		sanciones=+1
	}
}

class Jugador{
	var property valorPase
	var property partidosJugados 
	var property club
	var property actividadesSociales=#{}
	
	
	method esEstrellaDe50Partidos() {
		return partidosJugados>=50
	}
	
	
	method esEstrellaProfesional(){
		return self.club().perfil()==profesional.perfil()and valorPase>valorBase.baseDelPase()
	}
	method esComunitarioEstrella(){
		return self.club().perfil()==comunitario.perfil()and actividadesSociales.size()>=3
	}
	method esEstrellaTradicional(){
		return self.club().perfil()==tradicional.perfil()and valorPase>valorBase.baseDelPase() or actividadesSociales.size()>=3
		
	}
	method esJugadorEstrella(){
		return self.esEstrellaDe50Partidos()or
			   self.esComunitarioEstrella()or
			   self.esEstrellaTradicional()or
			   self.esEstrellaProfesional()
	}
	
}
	


object valorBase{
	var property valor=500
	
	method baseDelPase(){
		return valor
	}
}

class ActividadSocial{
	var property socios ={}
	var property socioOrganizador
	var property sanciones
}

class Socio{
	var property aniosDeSocio
	var property club
	var property actividadesSociales=#{}
	
	method esEstrella(){
		return aniosDeSocio>20
	}
}



