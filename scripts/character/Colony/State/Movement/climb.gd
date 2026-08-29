class_name Climb extends MovementState

func enter(character):
	character.movement_animation.play("climb")

func update(character, direction: Vector2, delta):
	character.velocity.x = direction.x * character.data.speedX
	character.velocity.y = direction.y * character.data.speedY
