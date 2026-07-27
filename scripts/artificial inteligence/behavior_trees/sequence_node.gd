class_name SequenceNode extends ControlNode

func execute(context) -> Status:
	for child in children:
		var result := child.execute(context)
		if result == Status.FAILURE:
			return Status.FAILURE
		if result == Status.RUNNING:
			return Status.RUNNING

	return Status.SUCCESS
