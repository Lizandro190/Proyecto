class_name UsuarioController extends BaseController

func get_direction() -> Vector2:
	return Vector2(
		Input.get_axis("ui_left", "ui_right"), 
		Input.get_axis("ui_up", "ui_down")
	)
