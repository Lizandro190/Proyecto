extends Label

func _process(delta: float) -> void:
	text = WorldWeather.get_name_estacion()
