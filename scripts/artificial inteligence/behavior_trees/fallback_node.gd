class_name FallbackNode extends ControlNode

func execute(context) -> Status:
	for child in children:
		var result := child.execute(context)
		if result == Status.SUCCESS:
			return Status.SUCCESS
		if result == Status.RUNNING:
			return Status.RUNNING

	return Status.FAILURE
