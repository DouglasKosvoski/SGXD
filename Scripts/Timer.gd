extends Control

export(int) var segundos
var running = true

func _ready():
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
