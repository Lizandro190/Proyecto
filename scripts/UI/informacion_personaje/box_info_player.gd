class_name BoxPlayerInfo extends VBoxContainer

@onready var texture : TextureRect = $TextureRect
@onready var nombre : Label = $BoxNombre/Nombre
@onready var felicidad : Label = $BoxFelicidad/Felicidad
@onready var cansancio : Label = $BoxCansancio/Cansancio
@onready var amor : Label = $BoxAmor/Amor

var personaje_actual = null

func actualizar_valores(personaje):
	personaje_actual = personaje

func _process(delta):
	if personaje_actual == null:
		return

	nombre.text = personaje_actual.player_info.nombre + " " + personaje_actual.player_info.apellido
	felicidad.text = str(personaje_actual.player_info.felicidad)
	cansancio.text = str(personaje_actual.player_info.cansancio)
	amor.text = str(personaje_actual.player_info.amor)
	
