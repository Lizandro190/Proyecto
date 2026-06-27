extends Label

func _process(delta: float) -> void:
	text = str(HorarioWorld.dia_actual)
