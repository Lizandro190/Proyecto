class_name GameManager extends Node

@onready var colony_manager: ColonyManager = $ColonyManager
@onready var canvas_manager: CanvasManager = $CanvasManager
@onready var production_manager: ProductionManager = $ProductionManager

func _ready():			
	colony_manager.crear_colono(Vector2(80, 380))
	colony_manager.crear_colono(Vector2(120, 380))
	colony_manager.crear_colono(Vector2(160, 380))
