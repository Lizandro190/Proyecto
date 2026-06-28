class_name SingletonInfo extends Node2D

@onready var events : Events = $Events
@onready var tick_global: TickGlobal = $TickGlobal
@onready var player_global: PlayerGlobal = $PlayerGlobal
@onready var horario_global: HorarioGlobal = $HorarioGlobal
@onready var weather_global: WeatherGlobal = $WeatherGlobal
@onready var world_state: WorldState = $WorldState
@onready var production_global: ProductionGlobal = $ProductionGlobal

func _ready() -> void:
	events.toggle_control_colono.connect(player_global.toggle_control)
