class_name StateMachine extends RefCounted

var current_state: State

func change_state(new_state: State, character):
	if current_state == new_state:
		return

	if current_state:
		current_state.exit(character)

	current_state = new_state

	if current_state:
		current_state.enter(character)

func update(character: Character, direction: Vector2, delta: float):
	if current_state:
		current_state.update(character, direction, delta)
