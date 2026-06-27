class_name TickGlobal extends Node

var duracion_tick := 2.5

signal tick_completo

var timer_tick: Timer

func _ready():
	timer_tick = Timer.new()
	
	add_child(timer_tick)

	timer_tick.wait_time = duracion_tick
	
	timer_tick.one_shot = false
	
	timer_tick.timeout.connect(_on_tick)
	timer_tick.start()
		
func _on_tick():
	tick_completo.emit()
