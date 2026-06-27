extends StateBase

func on_physics_process(delta):
	controlled_node.play_animation("caminar")
	
func on_input(event):
	if !Input.is_action_pressed("ui_left") and !Input.is_action_pressed("ui_right"):
		state_machine.change_to("StateStill")
