extends Control

export(String, FILE, "*.tscn") var next_scene

func _on_ContinueButton_pressed():
	get_tree().change_scene(next_scene)
