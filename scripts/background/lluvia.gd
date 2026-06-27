extends Node2D

@onready var animacion_uno: AnimatedSprite2D = $Uno
@onready var animacion_dos: AnimatedSprite2D = $Dos

func _ready() -> void:
	animacion_uno.play("lluvia")
	animacion_dos.play("lluvia")
