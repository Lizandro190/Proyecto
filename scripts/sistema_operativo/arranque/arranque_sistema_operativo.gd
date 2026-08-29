class_name ArranqueSistemaOperativo
extends CanvasLayer

@onready var timer: Timer = $Timer
@onready var timerDos: Timer = $Timer2

@onready var sonido_inicio: AudioStreamPlayer = $AudioStreamPlayer

@onready var hexa: VBoxContainer = $PanelContainer/MarginContainer/VBoxContainer/BoxContainer/VBoxContainer/hexa
@onready var processor: VBoxContainer = $PanelContainer/MarginContainer/VBoxContainer/BoxContainer/VBoxContainer/ProcessorAndMemory
@onready var info_software: VBoxContainer = $PanelContainer/MarginContainer/VBoxContainer/BoxContainer/VBoxContainer/InfoSoftware
@onready var devices: VBoxContainer = $PanelContainer/MarginContainer/VBoxContainer/BoxContainer/VBoxContainer/InitializeSystemDevice2
@onready var controller: VBoxContainer = $PanelContainer/MarginContainer/VBoxContainer/BoxContainer/VBoxContainer/Controllers
@onready var boot: VBoxContainer = $PanelContainer/MarginContainer/VBoxContainer/BoxContainer/VBoxContainer/Boot

var elementos = []
var indice_actual: int = 0

var numero_cargas_totales: int = 7
var numero_cargas_actuales: int = 0

func _ready() -> void:
	elementos.append(hexa)
	elementos.append(processor)
	elementos.append(info_software)
	elementos.append(devices)
	elementos.append(controller)
	elementos.append(boot)
	
	sonido_inicio.play()


func _on_timer_timeout() -> void:
	if indice_actual >= elementos.size():
		timer.stop()
		iniciar_main()
		return
	elementos[indice_actual].visible = true
	
	if elementos[indice_actual].process.has_process:
		numero_cargas_actuales = 0
		timer.stop()
		timerDos.start()
		return
	indice_actual += 1


func _on_timer_2_timeout() -> void:
	if numero_cargas_actuales < numero_cargas_totales:
		elementos[indice_actual].cargar_proceso()
		numero_cargas_actuales += 1
		
	else:
		timerDos.stop()
		numero_cargas_actuales = 0
		elementos[indice_actual].hacerHijosVisibles()
		indice_actual += 1
		timer.start()

func iniciar_main() -> void:
	get_tree().change_scene_to_file("res://escenas/main.tscn")
	
