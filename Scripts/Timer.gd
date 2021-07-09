extends Control

export(int) var segundos
var running = true

func _ready():
	$AudioStreamPlayer.stream = AudioManager.timer_countdown_sfx
	$AudioStreamPlayer.play(0.0)
	
	if AudioManager.sound_on:
		$AudioStreamPlayer.volume_db = AudioManager.sound_volume
	else:
		$AudioStreamPlayer.volume_db = AudioManager.MIN_VOLUME_LEVEL
	$Timer.start(segundos+1)
	
func _process(delta):
	if int($Timer.get_time_left()) < segundos*0.15:
		$AudioStreamPlayer.pitch_scale = 2.5
	elif int($Timer.get_time_left()) < segundos*0.33:
		$AudioStreamPlayer.pitch_scale = 2
		
	if running:
		$CanvasLayer/Tempo.text = str(int($Timer.get_time_left()))
	else:
		$CanvasLayer/Tempo.text = "0"
		
func _on_Timer_timeout():
	running = false
	$AudioStreamPlayer.stop()
	
func _on_AudioStreamPlayer_finished():
	if running:
		$AudioStreamPlayer.play()
