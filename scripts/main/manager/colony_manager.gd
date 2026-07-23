class_name CharactersManager extends Node

var characters: Array[Character] = []

var colony_scene = preload("res://escenas/characters/Colony.tscn")

func _ready() -> void:
	SingleInfo.tick_global.tick_completo.connect(_update_characters)

func make_colony(posicion: Vector2):
	var colony = colony_scene.instantiate()

	colony.position = posicion
	add_child(colony)
	
	characters.append(colony)

func _update_characters() -> void:
	for character in characters:
		character.interact_with_build()
