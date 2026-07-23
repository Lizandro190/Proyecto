class_name Colony extends Character

var occupation: Occupation
var current_activity: ActivityState
var builds_asigned: BuildsAsigned

var personal_information: PersonalInformation
var emotional_information: EmotionalInformation
var physic_information: PhysicInformation

func _ready() -> void:
	## Clases generales de Character
	physics = ColonyPhysics.new()
	
	user_controller = UserColonyController.new()
	ai_controller = AIColonyController.new()
	current_controller = ai_controller
	
	movement_resolver = ColonyMovementResolver.new()
	activity_resolver = ColonistActivityResolver.new()
	
	state_machine = StateMachine.new()
	
	build_ubication = BuildingUbication.new()
	information = ColonyInformation.new()

	## Clases unicas de Colony
	occupation = Miner.new()
	current_activity = Leisure.new()
	builds_asigned = BuildsAsigned.new()
	
	personal_information = PersonalInformation.new()
	emotional_information = EmotionalInformation.new()
	physic_information = PhysicInformation.new()
	
func deseleccionar():
	super.deseleccionar()
	current_controller = ai_controller
	
	
