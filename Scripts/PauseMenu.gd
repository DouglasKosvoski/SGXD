extends Container

func _input(event):
	if event.is_action_pressed("ui_cancel"):
		if get_tree().paused == false:
			_on_PauseButton_pressed()
		else:
			_on_ResumeButton_pressed()

func _on_PauseButton_pressed():
	$Content.visible = true
	$Background.visible = true
	$PauseButton.visible = false
	get_tree().paused = true
	
func _on_ResumeButton_pressed():
	$Content.visible = false
	$Background.visible = false	
	$PauseButton.visible = true
	get_tree().paused = false
	
func _on_QuitButton_pressed():
	get_tree().paused = false
	get_tree().quit()
