extends Control

export(String, FILE, "*.tscn") var MainMenu

func _on_ReturnButton_pressed():
	get_tree().change_scene(MainMenu)
