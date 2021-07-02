extends Node2D

# loop
func _on_AudioStreamPlayer_finished():
	$AudioStreamPlayer.play()
