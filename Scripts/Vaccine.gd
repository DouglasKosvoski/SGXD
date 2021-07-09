extends Node2D

export(String) var vacine_name

func _ready():
	$AudioStreamPlayer2D.stream = AudioManager.vaccine_collected_sfx
	
	if AudioManager.audio_on:
		$AudioStreamPlayer2D.volume_db = AudioManager.audio_volume
	else:
		$AudioStreamPlayer2D.volume_db = AudioManager.MIN_VOLUME_LEVEL
	
func _on_Area2D_body_entered(body):
	if body.name == "Player":
		body.collected(vacine_name)
		$AudioStreamPlayer2D.play()

func _on_AudioStreamPlayer2D_finished():
	queue_free()
