extends Node2D

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		get_node("Player/CanvasLayer/Caderneta").complete_from_area2d(true)

func update_volume():
	$AudioStreamPlayer.volume_db = AudioManager.audio_volume
