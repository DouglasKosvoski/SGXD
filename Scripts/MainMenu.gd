extends Control

export(String, FILE, "*.tscn") var start
export(String, FILE, "*.tscn") var howtoplay
export(String, FILE, "*.tscn") var options
export(String, FILE, "*.tscn") var credits
export(String, FILE, "*.tscn") var ending

func _on_Start_pressed():
	get_tree().change_scene(start);

func _on_HowToPlay_pressed():
	get_tree().change_scene(howtoplay);

func _on_Options_pressed():
	get_tree().change_scene(options);

func _on_Credits_pressed():
	get_tree().change_scene(credits);

func _on_Quit_pressed():
	get_tree().change_scene(ending);
