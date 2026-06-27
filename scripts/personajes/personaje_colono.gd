class_name PersonajeColono extends PersonajePadre

func _ready() -> void:
	active_controller = ai_controller
	
	player_work.work = PlayerWork.WORKS.TALADOR
	player_state.estado = PlayerState.ESTADOS.TRABAJO
	
func _physics_process(delta: float) -> void:	
	fisica.aplicar_fisica(self, delta)
	
	var direction = active_controller.get_direction()
	var state = logic_controller.movement_type(self, direction)
	movement_executer.execute(self, state, direction)
	
	move_and_slide()
	
func seleccionar():
	animacion_hitbox.visible = true
	camara.enabled = true
	animacion_hitbox.play("hitbox")

func deseleccionar():
	animacion_hitbox.visible = false
	camara.enabled = false
	active_controller = ai_controller
	animacion_hitbox.stop()
	
