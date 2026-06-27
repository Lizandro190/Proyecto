class_name EdificioCasa extends EdificioArea

var comodidad: int

func descansar(personaje : PersonajePadre):
	personaje.player_info.cansancio += comodidad
	
