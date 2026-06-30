class_name BuildInfo extends Node

var horizontal_builds: int
var max_vertical_build := 30

var construcciones := []

func inicializar(columnas: int) -> void:
	horizontal_builds = columnas

	for y in range(max_vertical_build):
		var fila := []
		
		for x in range(horizontal_builds):
			fila.append(null)
		
		construcciones.append(fila)
			
	
