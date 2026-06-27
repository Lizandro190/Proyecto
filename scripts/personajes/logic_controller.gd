class_name UserController extends Node

func run_logic(personaje: PersonajeColono, delta: float):
	var direction = Vector2.ZERO
	direction.x = Input.get_axis("ui_left", "ui_right")
	direction.y = Input.get_axis("ui_up", "ui_down")
	
	if direction.x:
		if direction.x == 1:
			personaje.animacion_player.flip_h = false
		elif direction.x == -1:
			personaje.animacion_player.flip_h = true
		personaje.animacion_player.play("caminar")
		personaje.velocity.x = direction.x * personaje.SPEED_X
		
	elif direction.y and personaje.player_ubication.is_in_edificio:
		if direction.y == 1 or direction.y == -1:	
			personaje.animacion_player.play("subiendo")
		personaje.velocity.y = direction.y * personaje.SPEED_Y		
	else:
		personaje.animacion_player.play("parado")
		personaje.velocity.x = move_toward(
								personaje.velocity.x, 0, personaje.SPEED_X)
		if personaje.player_ubication.is_in_edificio:
			personaje.velocity.y = move_toward(
								personaje.velocity.y, 0, personaje.SPEED_Y)
		
	
	
