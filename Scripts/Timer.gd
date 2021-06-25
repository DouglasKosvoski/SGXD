extends Control

export(int) var segundos
var running = true

func _ready():
	$Timer.start(segundos+1)
	
func _process(delta):
	if running:
		$CanvasLayer/Tempo.text = str(int($Timer.get_time_left()))
	else:
		$CanvasLayer/Tempo.text = "0"
		
func _on_Timer_timeout():
	running = false
