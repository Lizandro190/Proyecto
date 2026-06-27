class_name VistaPrevia extends AnimatedSprite2D

const TILE_SIZE = 16

func _ready() -> void:
	play("zoom")
	visible = true

func _process(delta):
		var mouse_pos = get_global_mouse_position()

		var grid_x = floor(mouse_pos.x / TILE_SIZE)
		var grid_y = floor(mouse_pos.y / TILE_SIZE)

		global_position = Vector2(
			grid_x * TILE_SIZE,
			grid_y * TILE_SIZE
		)
