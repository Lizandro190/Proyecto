class_name WeatherGlobal extends Node

enum SKY {
	DESPEJADO,
	PARCIALMENTE_NUBLADO,
	NUBLADO
}

enum WEATHER {
	DEPEJADO,
	LLUVIA,
	TORMENTA_ELECTRICA,
	NIEBLA,
	NIEVE,
	VENTISCA,
	GRANIZO,
}

enum STATION {
	PRIMAVERA,
	VERANO,
	OTOÑO,
	INVIERNO,
}

const NAMES_WEATHER = [
	"DESPEJADO",
	"LLUVIA",
	"TORMENTA_ELECTRICA",
	"NIEBLA",
	"NIEVE",
	"VENTISCA",
	"GRANIZO",
]

const NAMES_STATION = [
	"PRIMAVERA",
	"VERANO",
	"OTOÑO",
	"INVIERNO",
]

var actually_weather = WEATHER.DEPEJADO
var actually_station = STATION.INVIERNO

func name_actually_weather() -> String:
	return NAMES_WEATHER[actually_weather]
	
func name_actually_station() -> String:
	return NAMES_STATION[actually_station]
	
func name_weather(i: int) -> String:
	return NAMES_WEATHER[i]
	
func name_station(i: int) -> String:
	return NAMES_STATION[i]

func random_weather() -> WEATHER:
	return WEATHER.values().pick_random()
	
	
