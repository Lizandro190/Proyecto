class_name CanvasTime extends CanvasLayer

@onready var time: Label = $PanelContainer/MarginContainer/VBoxContainer/TimeContainer/AspectRatioContainer2/Time
@onready var day: Label = $PanelContainer/MarginContainer/VBoxContainer/ContToggleVisibility/VBoxContainer/DayContainer/AspectRatioContainer2/Day
@onready var station: Label = $PanelContainer/MarginContainer/VBoxContainer/ContToggleVisibility/VBoxContainer/StationContainer/AspectRatioContainer2/Station
@onready var weather: Label = $PanelContainer/MarginContainer/VBoxContainer/ContToggleVisibility/VBoxContainer/WeatherContainer/AspectRatioContainer/Weather

func _ready() -> void:
	SingleInfo.horario_global.minuto_cambiado.connect(_on_minuto_cambiado)
	SingleInfo.horario_global.dia_cambiado.connect(_on_dia_cambiado)
	
	mostrar_hora(SingleInfo.horario_global.minuto_actual)
	
	day.text = str(SingleInfo.horario_global.dia_actual)
	station.text = UtilidadesUniversalesSNG.primera_mayuscula(SingleInfo.weather_global.name_actually_station())
	weather.text = UtilidadesUniversalesSNG.primera_mayuscula(SingleInfo.weather_global.name_actually_weather())

func _on_minuto_cambiado():
	mostrar_hora(SingleInfo.horario_global.minuto_actual)

func _on_dia_cambiado():
	pass

func mostrar_hora(minuto: int) -> void:
	if minuto < 10:
		time.text = str(SingleInfo.horario_global.hora_actual) + " : 0" + str(SingleInfo.horario_global.minuto_actual) 
	else:
		time.text = str(SingleInfo.horario_global.hora_actual) + " : " + str(SingleInfo.horario_global.minuto_actual)
