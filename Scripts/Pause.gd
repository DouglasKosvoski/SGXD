extends Control

export(String) var return_to

func _ready():
	setup_slider_values()

	if return_to == "Main Menu":
		$Music.stream = AudioManager.main_menu_music
		$Music.play()
		$CanvasLayer/Container/.visible = true
		$CanvasLayer/PauseButton.visible = false
		$CanvasLayer/Container/CenterContainer.visible = false
		$CanvasLayer/Container/OptionsMenu.visible = true
	else:
		$CanvasLayer/Container/CenterContainer.visible = false
		$CanvasLayer/Container/OptionsMenu.visible = false
		$CanvasLayer/Container.visible = false
		
func _input(event):
	if event.is_action_pressed("ui_cancel"):
		if get_tree().paused == false:
			_on_PauseButton_pressed()
		else:
			_on_ResumeButton_pressed()

func _on_PauseButton_pressed():
	$CanvasLayer/Container.visible = true
	$CanvasLayer/Container/CenterContainer.visible = true
	get_tree().paused = true
	
func _on_ResumeButton_pressed():
	$CanvasLayer/Container.visible = false
	get_tree().paused = false
	if return_to == "Level":
		get_parent().update_volume()
		get_parent().get_node("Timer").update_volume()
		
func _on_OptionsButton_pressed():
	$CanvasLayer/Container/OptionsMenu.visible = true
	$CanvasLayer/Container/CenterContainer.visible = false
	
func _on_QuitButton_pressed():
	get_tree().paused = false
	get_tree().change_scene("res://Scenes/Ending.tscn")

func _on_ReturnButton_pressed():
	if return_to == "Main Menu":
		get_tree().change_scene("res://Scenes/MainMenu.tscn")
	else:
		$CanvasLayer/Container/OptionsMenu.visible = false
		$CanvasLayer/Container/CenterContainer.visible = true

func _on_MusicSlider_value_changed(value):
	$Music.volume_db = AudioManager.sound_volume
	AudioManager.sound_volume = value
	
func _on_AudioSlider_value_changed(value):
	AudioManager.audio_volume = value
	$Fx.volume_db = AudioManager.audio_volume
	$Fx.stream = AudioManager.button_sfx
	$Fx.play(0.0)
	
func setup_slider_values():
	$CanvasLayer/Container/OptionsMenu/AudioSlider.min_value = AudioManager.MIN_VOLUME_LEVEL
	$CanvasLayer/Container/OptionsMenu/AudioSlider.max_value = AudioManager.MAX_VOLUME_LEVEL
	$CanvasLayer/Container/OptionsMenu/AudioSlider.value = AudioManager.audio_volume
	$CanvasLayer/Container/OptionsMenu/MusicSlider.min_value = AudioManager.MIN_VOLUME_LEVEL
	$CanvasLayer/Container/OptionsMenu/MusicSlider.max_value = AudioManager.MAX_VOLUME_LEVEL
	$CanvasLayer/Container/OptionsMenu/MusicSlider.value = AudioManager.sound_volume

func _on_Music_finished():
	$Music.play(0.0)
