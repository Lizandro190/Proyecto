extends Camera2D

@export var velocidad := 180.0

func _process(delta):
	if !SingleInfo.player_global.is_character_selected():
		mover_camara(delta)
	else: 
		global_position = SingleInfo.player_global.character_selected.global_position
				
func mover_camara(delta):
	var direccion := Vector2.ZERO

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
