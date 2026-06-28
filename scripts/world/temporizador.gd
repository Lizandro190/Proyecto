class_name TimeCount extends Node

@export var tiempo_trabajo := 3.0

var timer: Timer

signal tiempo_cumplido

func _ready():
	timer = Timer.new()
	add_child(timer)

	timer.wait_time = tiempo_trabajo
	timer.one_shot = false
	
	timer.timeout.connect(_on_timeout)
	
func _on_timeout():
	tiempo_cumplido.emit()	
	
func start_count():
	timer.start()
	
func stop_count():
	timer.stop()
