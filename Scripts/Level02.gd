extends Node2D

func _ready():
	if AudioManager.sound_on:
		$AudioStreamPlayer.volume_db = AudioManager.sound_volume
	else:
		$AudioStreamPlayer.volume_db = AudioManager.MIN_VOLUME_LEVEL
	$AudioStreamPlayer.stream = AudioManager.level2_music
	$AudioStreamPlayer.play()

func update_volume():
	$AudioStreamPlayer.volume_db = AudioManager.sound_volume

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		get_node("Player/CanvasLayer/Caderneta").complete_from_area2d(true)

func _on_AudioStreamPlayer_finished():
	$AudioStreamPlayer.play()
