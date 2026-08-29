class_name Horario extends Node

var duracion_minuto := 2.5

signal minuto_cambiado
signal hora_cambiada
signal dia_cambiado

var horas_en_dia := 24
var minuto_actual := 0
var hora_actual := 0
var dia_actual := 1

var timer: Timer

func _ready():
	timer = Timer.new()
	
	add_child(timer)

	timer.wait_time = duracion_minuto
	
	timer.one_shot = false

	timer.timeout.connect(_on_timeout)
	timer.start()
		
func _on_timeout():
	cambiar_minuto()
	
	if minuto_actual >= 60:
		cambiar_hora()
	
	if hora_actual >= horas_en_dia:
		cambio_dia()
		
func cambiar_minuto() -> void:
	minuto_actual += 1
	emit_signal("minuto_cambiado")
	
func cambiar_hora() -> void:
	minuto_actual = 0
	hora_actual += 1
	emit_signal("hora_cambiada")
	
func cambio_dia() -> void:
	hora_actual = 0
	dia_actual += 1
	emit_signal("dia_cambiado")
