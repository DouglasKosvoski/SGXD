extends Control

export(String, FILE, "*.tscn") var start
export(String, FILE, "*.tscn") var howtoplay
export(String, FILE, "*.tscn") var options
export(String, FILE, "*.tscn") var credits
export(String, FILE, "*.tscn") var ending
var next_scene = null

# toggle icon sprite
var sound_on = preload("res://Sprites/ui/ui_volume.png")
var sound_off = preload("res://Sprites/ui/ui_volume_off.png")
var music_on = preload("res://Sprites/ui/ui_music.png")
var music_off = preload("res://Sprites/ui/ui_music_off.png")

func _ready():
	$AudioStreamPlayer.stream = AudioManager.main_menu_music
	$AudioStreamPlayer.play(0.0)
	update_sound_settings()

func update_sound_settings():
	# audio/sfx settings
	if AudioManager.audio_on:
		$CanvasLayer/Audio/Sprite.set_texture(sound_on)
		$CanvasLayer/ButtonSFX.volume_db = AudioManager.audio_volume
		AudioManager.audio_on = true
	else:
		$CanvasLayer/Audio/Sprite.set_texture(sound_off)
		$CanvasLayer/ButtonSFX.volume_db = AudioManager.MIN_VOLUME_LEVEL
		AudioManager.audio_on = false
		
	# sound/music settings
	if AudioManager.sound_on:
		$CanvasLayer/Music/Sprite.set_texture(music_on)
		$AudioStreamPlayer.volume_db = AudioManager.sound_volume
		AudioManager.sound_on = true
	else:
		$CanvasLayer/Music/Sprite.set_texture(music_off)
		$AudioStreamPlayer.volume_db = AudioManager.MIN_VOLUME_LEVEL
		AudioManager.sound_on = false

func _on_Start_pressed():
	next_scene = start
	play_button_sound()
	
func _on_HowToPlay_pressed():
	next_scene = howtoplay
	play_button_sound()

func _on_Registrar_pressed():
	get_tree().change_scene("res://Scenes/Ranking.tscn")
	play_button_sound()

func _on_Credits_pressed():
	next_scene = credits
	play_button_sound()

func _on_Sobre_pressed():
	get_tree().change_scene("res://Scenes/About.tscn")
	play_button_sound()
	
func _on_Quit_pressed():
	next_scene = ending
	play_button_sound()
	
func _on_Audio_pressed():
	play_button_sound()
	AudioManager.audio_on = !AudioManager.audio_on
	update_sound_settings()
		
func _on_Music_pressed():
	play_button_sound()
	AudioManager.sound_on = !AudioManager.sound_on
	update_sound_settings()

# Replay main menu background music
func _on_AudioStreamPlayer_finished():
	$AudioStreamPlayer.play(0.0)

func _on_ButtonSFX_finished():
	if next_scene != null:
		get_tree().change_scene(next_scene)

func play_button_sound():
	$CanvasLayer/ButtonSFX.stream = AudioManager.button_sfx
	$CanvasLayer/ButtonSFX.play(0.0)
