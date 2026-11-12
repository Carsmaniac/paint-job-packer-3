extends Panel

var is_root_group: bool


func set_height() -> void:
	var height: int = 29
	for child in get_node("%ChildLayerInstances").get_children():
		if child.get_script():
			# Actual layer
			height += 29
		else:
			# Separator
			height += 3
	custom_minimum_size.y = height


func _enter_tree() -> void:
	set_height()
