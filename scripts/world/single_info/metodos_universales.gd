class_name UtilidadesUniversales extends Node

func primera_mayuscula(texto: String) -> String:
	return texto[0].to_upper() + texto.substr(1).to_lower()
