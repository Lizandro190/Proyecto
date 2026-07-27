class_name BehaviorNode extends RefCounted

enum Status {
	SUCCESS,
	FAILURE,
	RUNNING
}

func execute(context) -> Status:
	return Status.FAILURE
