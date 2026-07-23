class_name Build extends Area2D

@onready var sprite: Sprite2D

var name_build: String
var character_capacity: int
var is_apilable: bool
var capacidad_maxima: int

func _can_interact(character: Character) -> bool:
	return false

func interact(character: Character) -> void:
	pass
	
func _on_area_entered(area: Area2D) -> void:
	var character = area.character
	if character is Character:
		character.build_ubication.enter_build(self)

func _on_area_exited(area: Area2D) -> void:
	var character = area.character
	if character is Character:
		character.build_ubication.exit_build(self)
