extends Control

@export var tiempo_visible := 1.0
@export var duracion_fade := 7.0

@onready var fondo := $FondoNegro

var tiempo := 0.0
var iniciando_fade := false

func _process(delta):
	if !iniciando_fade:
		tiempo += delta

		if tiempo >= tiempo_visible:
			iniciando_fade = true
			tiempo = 0.0
	else:
		tiempo += delta

		var progreso = clamp(tiempo / duracion_fade, 0.0, 1.0)
		fondo.color.a = 1.0 - progreso

		if progreso >= 1.0:
			get_tree().change_scene_to_file("res://escenas/main.tscn")
