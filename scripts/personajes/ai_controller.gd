class_name AIController extends BaseController

var character: PersonajePadre

func _ready():
	character = owner as PersonajePadre

func get_direction() -> Vector2:
	return Vector2.ZERO
	
func is_build_up(character_y, build_y) -> bool:
	return build_y > character_y

func is_build_left(character_x, build_x) -> bool:
	return build_x > character_x
