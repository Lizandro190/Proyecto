class_name ProductionInfo extends CanvasLayer

@onready var label_madera: LabelMadera = $PanelContainer/MarginContainer/GridContainer/LabelMadera
@onready var label_piedra: LabelPiedra = $PanelContainer/MarginContainer/GridContainer/LabelPiedra
@onready var label_conocimiento: LabelConocimiento = $PanelContainer/MarginContainer/GridContainer/LabelConocimiento

func _process(delta: float) -> void:
	label_madera.text = str(WorldInfo.numero_madera)
	label_piedra.text = str(WorldInfo.numero_piedra)
	label_conocimiento.text = str(WorldInfo.numero_conocimiento)
	
