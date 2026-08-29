extends VBoxContainer

var process : Process

func _ready() -> void:
	process = Process.new()
	process.has_process = true
	process.label = $Label1
	process.texto_base = process.label.text
	
func cargar_proceso() -> void:
	process.label.visible = true
	process.label.text = process.texto_base + " " + process.animacion[process.indice_animacion]
	process.indice_animacion += 1
	if process.indice_animacion >= process.animacion.size():
		process.indice_animacion = 0

func hacerHijosVisibles() -> void:
	for hijo in get_children():
		hijo.visible = true
