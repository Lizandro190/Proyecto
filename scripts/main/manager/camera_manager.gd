class_name CamaraManager extends Node2D

@onready var camara: Camera2D = $Camera2D

enum ESTADO_CAMARA {
	LIBRE,
	SEGUIR_PLAYER
}

var estado := ESTADO_CAMARA.LIBRE
var objetivo : PersonajeColono

func enfocar(colono: PersonajeColono):
	objetivo = colono
	estado = ESTADO_CAMARA.SEGUIR_PLAYER
	
