class_name Walk extends MovementState

func enter(character):
	character.movement_animation.play("walk")

func update(character, direction: Vector2, delta):
	character.velocity.x = direction.x * character.information.speedX
	character.movement_animation.flip_h = direction.x < 0
	
