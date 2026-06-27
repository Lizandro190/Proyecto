class_name PlayerState extends Node

enum ESTADOS { DESCANSO, TRABAJO, OCIO, }

const NOMBRE_MATERIAL = [
	"DESCANSO",
	"TRABAJO", 
	"OCIO", 
]

var estado: ESTADOS = ESTADOS.DESCANSO

func get_state_name() -> String:
	return (NOMBRE_MATERIAL[estado])
