class_name State extends RefCounted

func enter(character):
	pass

func update(character: Character, direction: Vector2, delta: float):
	pass

func exit(character):
	pass

func get_state_name() -> String:
	return "UNKNOWN"
