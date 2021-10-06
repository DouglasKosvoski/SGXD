extends Control

export(String, FILE, "*.tscn") var next_scene

func _ready():
	print(Globals.total_score)

func _on_Continue_pressed():
	get_tree().change_scene(next_scene)
