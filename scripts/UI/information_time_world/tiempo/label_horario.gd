extends Label

func _process(delta: float) -> void:
	if HorarioWorld.minuto_actual < 10:
		text = str(HorarioWorld.hora_actual) + " : 0" + str(HorarioWorld.minuto_actual) 
	else:
		text = str(HorarioWorld.hora_actual) + " : " + str(HorarioWorld.minuto_actual) 
