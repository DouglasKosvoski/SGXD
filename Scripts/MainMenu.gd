extends Control

export(String, FILE, "*.tscn") var start
export(String, FILE, "*.tscn") var howtoplay
export(String, FILE, "*.tscn") var options
export(String, FILE, "*.tscn") var credits
export(String, FILE, "*.tscn") var ending

var sound_on = preload("res://Sprites/ui/ui_volume.png")
var sound_off = preload("res://Sprites/ui/ui_volume_off.png")
var music_on = preload("res://Sprites/ui/ui_music.png")
var music_off = preload("res://Sprites/ui/ui_music_off.png")
var pop = preload("res://Sounds/mixkit-electronic-lock-success-beeps-2852.wav")

var music = true
var sound = true
var next_scene = null

func _on_Start_pressed():
	next_scene = start
	play_button_sound()
	
func _on_HowToPlay_pressed():
	next_scene = howtoplay
	play_button_sound()
	
func _on_Options_pressed():
	next_scene = options
	play_button_sound()
	
func _on_Credits_pressed():
	next_scene = credits
	play_button_sound()
	
func _on_Quit_pressed():
	next_scene = ending
	play_button_sound()
	
func _on_Sound_pressed():
	play_button_sound()
	sound = !sound
	if sound:
		$CanvasLayer/Sound/Sprite.set_texture(sound_on)
	else:
		$CanvasLayer/Sound/Sprite.set_texture(sound_off)
	
func _on_Music_pressed():
	play_button_sound()
	music = !music
	if music:
		$CanvasLayer/Music/Sprite.set_texture(music_on)
	else:
		$CanvasLayer/Music/Sprite.set_texture(music_off)

# Replay main menu background music
func _on_AudioStreamPlayer_finished():
	$AudioStreamPlayer.play(0.0)

func _on_ButtonSFX_finished():
	print($CanvasLayer/ButtonSFX.stream.resource_path.get_file())
	if $CanvasLayer/ButtonSFX.stream.resource_path.get_file() == "mixkit-electronic-lock-success-beeps-2852.wav":
		if next_scene != null:
			get_tree().change_scene(next_scene)

func play_button_sound():
	$CanvasLayer/ButtonSFX.stream = pop
	$CanvasLayer/ButtonSFX.play(0.0)
