class_name ColonyPhysics extends Physics

func apply_physic(colony: Character, delta: float):
	if colony.build_ubication.is_in_build():
		colony.velocity.y = 0
		return
		
	super.apply_physic(colony, delta)
