class_name MovementState extends Node

enum MovementType {
	IDLE,
	WALK,
	RUN,
	CLIMB
}

var NamesMovementType = [
	"IDLE",
	"WALK",
	"RUN",
	"CLIMB"]

var movement_type := MovementType.IDLE

func name_movement_type(i: int) -> String:
	return NamesMovementType[i]
