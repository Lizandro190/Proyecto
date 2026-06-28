class_name ColonyManager extends Node

var colonos: Array[PersonajePadre] = []

var colono_scene = preload("res://escenas/personajes/personaje_colono.tscn")

func _ready() -> void:
	SingleInfo.tick_global.tick_completo.connect(_update_colonos)

func crear_colono(posicion: Vector2):
	var colono = colono_scene.instantiate()

	colono.position = posicion
	add_child(colono)
	
	colonos.append(colono)

func _update_colonos() -> void:
	for colono in colonos:
		colono.interactuar_edificio()
