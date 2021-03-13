extends Button

export(String, FILE, "*.tscn") var world_scene

func _pressed():
	get_tree().change_scene(world_scene)
