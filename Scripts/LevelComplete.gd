extends Control

export(String, FILE, "*.tscn") var next_level

func _on_NextLevel_pressed():
	get_tree().paused = false
	get_tree().change_scene(next_level)
