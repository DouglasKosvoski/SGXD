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

var music = true
var sound = true


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

func _on_Sound_pressed():
	sound = !sound
	if sound:
		$CanvasLayer/Sound/Sprite.set_texture(sound_on)
	else:
		$CanvasLayer/Sound/Sprite.set_texture(sound_off)
	
func _on_Music_pressed():
	music = !music
	if music:
		$CanvasLayer/Music/Sprite.set_texture(music_on)
	else:
		$CanvasLayer/Music/Sprite.set_texture(music_off)
