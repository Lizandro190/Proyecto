class_name ConstructionGlobal extends Node

var construction_mode:= false

func toggle_control() -> void:
	construction_mode = !construction_mode
	
func is_in_mode_construction() -> bool:
	return construction_mode
