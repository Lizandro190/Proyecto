class_name UserController extends Controller

func get_direction(character: Character) -> Vector2:
	return Vector2(
		Input.get_axis("ui_left", "ui_right"), 
		Input.get_axis("ui_up", "ui_down")
	)
	
func is_managin_by_ia() -> bool:
	return false
