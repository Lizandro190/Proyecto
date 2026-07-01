extends ColorRect

@export var duracion := 4.0

var tiempo := 0.0

func _process(delta):
	tiempo += delta
	
	var progreso = clamp(tiempo / duracion, 0.0, 1.0)
	color.a = 1.0 - progreso
