class_name TypeControl extends Node

var is_controlled_by_ia := true

func managin_by_player() -> void:
	is_controlled_by_ia = false
	
func managin_by_ia() -> void:
	is_controlled_by_ia = true
	
func toggle_managin() -> void:
	is_controlled_by_ia = !is_controlled_by_ia
	
