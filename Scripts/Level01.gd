extends Node2D

func _ready():
	$AudioStreamPlayer.stream = AudioManager.level1_music
	$AudioStreamPlayer.play()
	
	if AudioManager.sound_on:
		$AudioStreamPlayer.volume_db = AudioManager.sound_volume
	else:
		$AudioStreamPlayer.volume_db = AudioManager.MIN_VOLUME_LEVEL

# loop
func _on_AudioStreamPlayer_finished():
	$AudioStreamPlayer.play()
