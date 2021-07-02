extends Node2D

export(String) var vacine_name

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		body.collected(vacine_name)
		$AudioStreamPlayer2D.play()

func _on_AudioStreamPlayer2D_finished():
	queue_free()
