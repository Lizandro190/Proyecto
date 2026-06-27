class_name FavoriteWeather extends Node

var favorite_weather: WeatherGlobal.WEATHER

func _ready() -> void:
	favorite_weather = SingleInfo.weather_global.random_weather()
