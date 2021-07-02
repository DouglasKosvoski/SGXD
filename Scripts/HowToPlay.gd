extends Control

export(String, FILE, "*.tscn") var MainMenu
var pop = preload("res://Sounds/mixkit-electronic-lock-success-beeps-2852.wav")

func _on_Button_pressed():
	$AudioStreamPlayer.stream = pop
	$AudioStreamPlayer.play(0.0)

func _on_AudioStreamPlayer_finished():
	get_tree().change_scene(MainMenu)
