extends Node2D

@onready var estrella_uno = $EstrellaUno
@onready var estrella_dos = $EstrellaDos
@onready var estrella_tres = $EstrellaTres
@onready var estrella_cuatro = $EstrellaCuatro
@onready var estrella_cinco = $EstrellaCinco

func _ready() -> void:
	estrella_uno.play("parpadeando")
	estrella_dos.play("parpadeando")
	estrella_tres.play("parpadeando")
	estrella_cuatro.play("parpadeando")
	estrella_cinco.play("parpadeando")
