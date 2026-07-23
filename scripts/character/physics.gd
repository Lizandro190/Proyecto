class_name Physics extends RefCounted

func apply_physic(character: Character, delta: float):
	if not character.is_on_floor():
		character.velocity += character.get_gravity() * delta
