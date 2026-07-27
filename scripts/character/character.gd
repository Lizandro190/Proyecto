class_name Character extends CharacterBody2D

@onready var movement_animation = $MovementAnimation
@onready var hitbox_animation = $HitboxAnimation
@onready var camara = $Camera2D

var physics: Physics

var user_controller: UserController
var ai_controller: AIController
var current_controller: Controller

var movement_resolver: MovementResolver

var activity_resolver: ActivityResolver
var need_resolver: NeedResolver

var state_machine: StateMachine

var physical_information: PhysicalInformation
var build_ubication: BuildingUbication
var information: Information

func _physics_process(delta: float):
	physics.apply_physic(self, delta)

	var direction = current_controller.get_direction(self)
	var movement_state = movement_resolver.resolve_direction(self, direction)
	
	state_machine.change_state(movement_state, self)
	state_machine.update(self, direction, delta)

	move_and_slide()
	
func seleccionar():
		hitbox_animation.visible = true
		hitbox_animation.play("hitbox")
		camara.enabled = true

func deseleccionar():
	hitbox_animation.visible = false
	hitbox_animation.stop()
	camara.enabled = false
	
func toogle_control():
	if current_controller is AIController:
		current_controller = user_controller
		return
	current_controller = ai_controller	
	
func interact_with_build():
	if build_ubication.is_in_build():
		build_ubication.current_build.interact(self)
