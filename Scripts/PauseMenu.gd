extends Container

export(String, FILE, "*.tscn") var ending

func _input(event):
	if event.is_action_pressed("ui_cancel"):
		if get_tree().paused == false:
			_on_PauseButton_pressed()
		else:
			_on_ResumeButton_pressed()

func _on_PauseButton_pressed():
	self.visible = true
	get_parent().get_node("PauseButton").visible = false
	get_tree().paused = true
	
func _on_ResumeButton_pressed():
	self.visible = false	
	get_parent().get_node("PauseButton").visible = true
	get_tree().paused = false
	
func _on_OptionsButton_pressed():
	$CenterContainer.visible = false
	$OptionsMenu/CanvasLayer/Control.visible = true
	$OptionsMenu/CanvasLayer/Control/SoundSlider.value = 20
	$OptionsMenu.visible = true
	$Panel.visible = false
	
func _on_QuitButton_pressed():
	get_tree().paused = false
	get_tree().change_scene(ending)
