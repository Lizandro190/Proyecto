extends HBoxContainer

func _ready() -> void:
	var anim = get_node("ControlarIndic")
	anim.visible = false

func _on_mouse_entered() -> void:
	var anim = get_node("ControlarIndic")
	anim.visible = true
	anim.play("run")
	
func _on_mouse_exited() -> void:
	var anim = get_node("ControlarIndic")
	anim.visible = false

func _on_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			SingleInfo.events.toggle_control_character.emit()
