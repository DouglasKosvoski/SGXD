extends Control

export(String, FILE, "*.tscn") var MainMenu

func _on_Button_pressed():
	get_tree().change_scene(MainMenu)
