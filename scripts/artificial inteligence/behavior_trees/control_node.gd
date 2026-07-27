class_name ControlNode extends BehaviorNode

var children: Array[BehaviorNode] = []

func add_child(child: BehaviorNode) -> void:
	children.append(child)
