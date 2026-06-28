class_name LogicController extends Node
	
func movement_type(colono: PersonajeColono, direction: Vector2):
	if colono.player_ubication.is_in_edificio and direction.y != 0:
		return MovementState.MovementType.CLIMB
		
	if abs(direction.x) > 0:
		return MovementState.MovementType.WALK
		
	return MovementState.MovementType.IDLE
