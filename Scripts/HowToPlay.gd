extends Control

export(String, FILE, "*.tscn") var MainMenu

func _ready():
	if AudioManager.audio_on:
		$AudioStreamPlayer.volume_db = AudioManager.audio_volume
	else:
		$AudioStreamPlayer.volume_db = AudioManager.MIN_VOLUME_LEVEL
		
	if AudioManager.sound_on:
		$BackgroundMusic.volume_db = AudioManager.sound_volume
	else:
		$BackgroundMusic.volume_db = AudioManager.MIN_VOLUME_LEVEL
	$BackgroundMusic.stream = AudioManager.main_menu_music
	$BackgroundMusic.play()
	
func _on_Button_pressed():
	$AudioStreamPlayer.stream = AudioManager.button_sfx
	$AudioStreamPlayer.play(0.0)

func _on_AudioStreamPlayer_finished():
	get_tree().change_scene(MainMenu)

func _on_BackgroundMusic_finished():
	$BackgroundMusic.play()
