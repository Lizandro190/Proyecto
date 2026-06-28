extends CanvasLayer

@onready var label_madera : Label = $PanelContainer/MarginContainer/HBoxContainer/MaderaBox/Madera
@onready var label_piedra : Label = $PanelContainer/MarginContainer/HBoxContainer/PiedraBox/Piedra
@onready var label_conocimiento : Label = $PanelContainer/MarginContainer/HBoxContainer/ConocimientoBox/Conocimiento

func _ready() -> void:
	_update_canvas()
	
	SingleInfo.tick_global.tick_completo.connect(_update_canvas)

func _update_canvas() -> void:
	label_madera.text = str(SingleInfo.production_global.numero_madera)
	label_piedra.text = str(SingleInfo.production_global.numero_piedra)
	label_conocimiento.text = str(SingleInfo.production_global.numero_conocimiento)
