class_name PersonalInformation extends RefCounted

var nombre: String
var apellido: String
var is_woman: bool

var objeto_favorito

func _init() -> void:
	is_woman = true
	
	nombre = ColeccionNombresMujer.get_nombre_aleatorio()
	apellido = ColeccionNombresMujer.get_apellido_aleatorio()
	objeto_favorito = null
