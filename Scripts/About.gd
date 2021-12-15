extends Node2D

export(String, FILE, "*.tscn") var next_scene

func _on_Button_pressed():
	get_tree().change_scene(next_scene)

func _ready():
	if AudioManager.sound_on:
		$AudioStreamPlayer.volume_db = AudioManager.sound_volume
	else:
		$AudioStreamPlayer.volume_db = AudioManager.MIN_VOLUME_LEVEL
	$AudioStreamPlayer.stream = AudioManager.main_menu_music
	$AudioStreamPlayer.play()

func _on_AudioStreamPlayer_finished():
	$AudioStreamPlayer.play()
