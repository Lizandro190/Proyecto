extends Camera2D

@export var velocidad := 250.0

var limite_right
var limite_down
var limite_up

func _ready() -> void:
	global_position = SingleInfo.world_info.center
	
	limite_up = -SingleInfo.build_info.max_vertical_build * 16
	limite_right = SingleInfo.world_info.foreground_tiles_horizontal * 16
	limite_down = 475.0

func _process(delta):
	if !SingleInfo.character_global.is_character_selected():
		mover_camara(delta)
	else: 
		global_position = SingleInfo.character_global.character_selected.global_position
				
func mover_camara(delta):
	var direccion := Vector2.ZERO

	if Input.is_action_just_pressed("ui_c"):
		global_position = SingleInfo.world_info.center

	if Input.is_action_pressed("ui_left"):
		direccion.x -= 1

	if Input.is_action_pressed("ui_right"):
		direccion.x += 1

	if Input.is_action_pressed("ui_up"):
		direccion.y -= 1

	if Input.is_action_pressed("ui_down"):
		direccion.y += 1

	if direccion != Vector2.ZERO:
		global_position += direccion.normalized() * velocidad * delta
		
		global_position.x = clamp(global_position.x, 0.0, limite_right)
		global_position.y = clamp(global_position.y, limite_up, limite_down)
