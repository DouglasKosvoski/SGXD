extends Control

export(String, FILE, "*.tscn") var next_scene

func _ready():
	$AudioStreamPlayer.stream = AudioManager.opening_sfx
	$AudioStreamPlayer.play()
	
	if AudioManager.sound_on:
		$AudioStreamPlayer.volume_db = AudioManager.sound_volume
	else:
		$AudioStreamPlayer.volume_db = AudioManager.MIN_VOLUME_LEVEL

func _process(delta):
	$CanvasLayer/AnimationPlayer.play("Fade")

func _on_animation_finished(anim_name):
	get_tree().change_scene(next_scene)
