class_name CanvasManager extends Node

@onready var canvas_character_info: CanvasLayer = $CanvasCharacterInfo
@onready var canvas_time: CanvasLayer = $CanvasTime
@onready var canvas_production: CanvasLayer = $CanvasProduction
@onready var canvas_construccion: CanvasLayer = $CanvasConstruccion
@onready var canvas_edificios: CanvasLayer = $CanvasEdificios
@onready var canvas_character_info_complete: CanvasLayer = $CanvasCharacterInfoComplete

@onready var grid_preview: Node = $CanvasGridPreview

func _ready() -> void:
	SingleInfo.events.toggle_mode_construction.connect(_make_visible_grid_construccion)

func _make_visible_grid_construccion():
	grid_preview.grid._toggle_visible()
	
