class_name SingletonInfo extends Node2D

@onready var events : Events = $Events
@onready var world_info : WorldInfo = $WorldInfo
@onready var build_info : BuildInfo = $BuildInfo 

@onready var tick_global : TickGlobal = $TickGlobal
@onready var character_global: CharacterGlobal = $CharacterGlobal
@onready var horario: Horario = $Horario
@onready var weather_global: WeatherGlobal = $WeatherGlobal
@onready var construction_global: ConstructionGlobal = $ConstructionGlobal
@onready var production_global: ProductionGlobal = $ProductionGlobal

func _ready() -> void:
	events.toggle_control_character.connect(character_global.toggle_control)
	events.toggle_mode_construction.connect(construction_global.toggle_control)
	
	##Inyecciones
	build_info.inicializar(world_info.foreground_tiles_horizontal)
