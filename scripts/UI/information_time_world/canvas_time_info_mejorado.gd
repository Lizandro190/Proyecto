class_name CanvasTimeInfo extends CanvasLayer

@onready var hora : Label = $PanelContainer/MarginContainer/GridContainer/Hora
@onready var dia : Label = $PanelContainer/MarginContainer/GridContainer/Dia
@onready var estacion : Label = $PanelContainer/MarginContainer/GridContainer/Estacion
@onready var clima : Label = $PanelContainer/MarginContainer/GridContainer/Clima

func _ready() -> void:
	SingleInfo.horario_global.minuto_cambiado.connect(_on_minuto_cambiado)
	SingleInfo.horario_global.dia_cambiado.connect(_on_dia_cambiado)
	
	mostrar_hora(SingleInfo.horario_global.minuto_actual)
	
	dia.text = str(SingleInfo.horario_global.dia_actual)
	estacion.text = UtilidadesUniversalesSNG.primera_mayuscula(SingleInfo.weather_global.name_actually_station())
	clima.text = UtilidadesUniversalesSNG.primera_mayuscula(SingleInfo.weather_global.name_actually_weather())

func _on_minuto_cambiado():
	mostrar_hora(SingleInfo.horario_global.minuto_actual)
		
func _on_dia_cambiado():
	dia.text = str(SingleInfo.horario_global.dia_actual)

func mostrar_hora(minuto: int) -> void:
	if minuto < 10:
		hora.text = str(SingleInfo.horario_global.hora_actual) + " : 0" + str(SingleInfo.horario_global.minuto_actual) 
	else:
		hora.text = str(SingleInfo.horario_global.hora_actual) + " : " + str(SingleInfo.horario_global.minuto_actual)
		
