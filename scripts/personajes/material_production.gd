class_name MaterialProducion extends Node

enum TIPO_MATERIAL {
	DEFAULT,
	PIEDRA, 
	MADERA, 
	CONOCIMIENTO,
}

const NOMBRE_MATERIAL = [
	"DEFAULT",
	"PIEDRA", 
	"MADERA", 
	"CONOCIMIENTO",
]

var tipo_material: TIPO_MATERIAL = TIPO_MATERIAL.DEFAULT
		
var materia_producida: int = 0

func get_material_name() -> String:
	return (NOMBRE_MATERIAL[tipo_material])

func reset_materia_producida():
	materia_producida = 0	
