class_name GameManager extends Node

@onready var characters_manager: CharactersManager = $CharactersManager
@onready var canvas_manager: CanvasManager = $CanvasManager
@onready var production_manager: ProductionManager = $ProductionManager

func _ready():			
	characters_manager.make_colony(Vector2(100,100))
	characters_manager.make_colony(Vector2(140,100))
