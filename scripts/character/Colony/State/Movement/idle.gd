class_name Idle extends MovementState

func enter(character):
	character.movement_animation.frame = 0

func update(character, direction: Vector2, delta):
	character.velocity.x = 0
