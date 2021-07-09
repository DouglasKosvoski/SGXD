extends Control

func _ready():
	$AudioStreamPlayer.stream = AudioManager.credits_music
	$AudioStreamPlayer.play()
	
	$AnimationPlayer.play("ScrollUp")
	if AudioManager.sound_on:
		$AudioStreamPlayer.volume_db = AudioManager.sound_volume
	else:
		$AudioStreamPlayer.volume_db = AudioManager.MIN_VOLUME_LEVEL
		
func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "ScrollUp":
		get_tree().change_scene("res://Scenes/MainMenu.tscn")

func _on_Exit_pressed():
	get_tree().change_scene("res://Scenes/MainMenu.tscn")
