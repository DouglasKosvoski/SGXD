extends Control

export(String, FILE, "*.tscn") var next_scene

func _ready():
	$AudioStreamPlayer.stream = AudioManager.ranking_sfx
	$AudioStreamPlayer.play()
	
func _on_Button_pressed():
	$AudioStreamPlayer.stream = AudioManager.button_sfx
	$AudioStreamPlayer.play(0.0)
	
func _on_AudioStreamPlayer_finished():
	if $AudioStreamPlayer.stream == AudioManager.button_sfx:
		get_tree().change_scene(next_scene)
