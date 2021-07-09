extends Control

export(String, FILE, "*.tscn") var MainMenu

func _ready():
	if AudioManager.audio_on:
		$AudioStreamPlayer.volume_db = AudioManager.audio_volume
	else:
		$AudioStreamPlayer.volume_db = AudioManager.MIN_VOLUME_LEVEL

func _on_Button_pressed():
	$AudioStreamPlayer.stream = AudioManager.button_sfx
	$AudioStreamPlayer.play(0.0)

func _on_AudioStreamPlayer_finished():
	get_tree().change_scene(MainMenu)
