extends VBoxContainer

var process : Process

func _ready() -> void:
	process = Process.new()
	process.has_process = false
	
