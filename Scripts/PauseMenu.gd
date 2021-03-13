extends Container

func _on_PauseButton_pressed():
	$CenterContainer.visible = true
	$PauseButton.visible = false
	
func _on_ResumeButton_pressed():
	$CenterContainer.visible = false
	$PauseButton.visible = true

func _on_QuitButton_pressed():
	get_tree().quit()
