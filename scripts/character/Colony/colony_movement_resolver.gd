class_name ColonyMovementResolver extends MovementResolver

func resolve_direction(character: Character, direction: Vector2) -> MovementState:
	if character.build_ubication.is_in_build() and direction.y != 0:
		return Climb.new()

	if abs(direction.x) > 0:
		return Walk.new()

	return Idle.new()
