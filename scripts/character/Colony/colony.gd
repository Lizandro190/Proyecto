class_name Colony extends Character

var occupation: Occupation
var current_activity: ActivityState
var builds_asigned: BuildsAsigned

var identity_information: IdentityInformation
var emotional_information: EmotionalInformation
var social_information: SocialInformation

func _ready() -> void:
	## Clases generales de Character
	physics = ColonyPhysics.new()
	
	user_controller = UserColonyController.new()
	ai_controller = AIColonyController.new()
	current_controller = ai_controller
	
	movement_resolver = ColonyMovementResolver.new()
	activity_resolver = ColonistActivityResolver.new()
	
	state_machine = StateMachine.new()
	
	physical_information = PhysicalInformation.new()
	build_ubication = BuildingUbication.new()
	data = ColonyData.new()

	## Clases unicas de Colony
	occupation = Miner.new()
	current_activity = Leisure.new()
	builds_asigned = BuildsAsigned.new()
	
	identity_information = IdentityInformation.new()
	emotional_information = EmotionalInformation.new()
	
func deseleccionar():
	super.deseleccionar()
	current_controller = ai_controller
	
	
