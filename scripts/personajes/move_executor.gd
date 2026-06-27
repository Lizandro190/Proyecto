class_name MovementExecutor extends Node

func execute(character: PersonajePadre, state, direction: Vector2):
	match state:

		MovementState.MovementType.IDLE:
			character.velocity.x = 0
			character.play_animation("parado")

		MovementState.MovementType.WALK:
			character.velocity.x = direction.x * character.SPEED_X
			character.play_animation("caminar")
			character.animacion_player.flip_h = direction.x < 0

		MovementState.MovementType.CLIMB:
			character.velocity.y = direction.y * character.SPEED_Y
			character.velocity.x = direction.x * character.SPEED_X
			character.play_animation("subiendo")
