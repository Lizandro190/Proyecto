class_name ControlType extends Node

enum ControlTypes {
	PLAYER,
	AI,
}

var control_type := ControlTypes.AI

func get_move_direction():
	if control_type == ControlTypes.PLAYER:
		return Input.get_axis("ui_left", "ui_right")
	else:
		return ai_decision_move()
