class_name PersonajePadre extends CharacterBody2D

@onready var fisica: Physic = $Physic
@onready var player_work: PlayerWork = $PlayerWork
@onready var type_control: TypeControl = $TypeControl
@onready var build_asigned: BuildsAsigned = $BuildsAsigned
@onready var player_ubication: PlayerUbication = $PlayerUbication
@onready var player_state: PlayerState = $PlayerState
@onready var player_info: PlayerInfo = $PlayerInfo

@onready var input_controller: InputController = $InputController
@onready var logic_controller: LogicController = $LogicController
@onready var movement_state: MovementState = $MovementState

@onready var movement_executer: MovementExecutor = $MovementExecutor
@onready var active_controller: BaseController = $BaseController
@onready var user_controller: UsuarioController = $BaseController/UsuarioController
@onready var ai_controller: AIController = $BaseController/AIController

@onready var camara : Camera2D = $Camera2D
@onready var animacion_player = $AnimacionPlayer
@onready var animacion_hitbox = $HitboxAnimPlayer

const SPEED_X = 100.0
const SPEED_Y = 50

var coordenate_x: int
var coordenate_y : int

func is_managed_by_ia() -> bool:
	return active_controller is AIController

func interactuar_edificio():
	if !player_ubication.is_in_edificio:
		return
	player_ubication.edificio_actual.interactuar(self)
	
func play_animation(name: String) -> void:
	animacion_player.play(name)
