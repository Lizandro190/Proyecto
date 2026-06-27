extends StateBase

func on_physics_process(delta):
	controlled_node.play_animation("parado")
	controlled_node.stop()
	
func on_input(event):
	if Input.is_action_just_pressed("ui_left") or Input.is_action_just_pressed("ui_right"):
		state_machine.change_to("StateWalk")
