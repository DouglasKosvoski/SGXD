extends Node2D

func _on_TouchScreenButton_pressed():
	get_parent().get_parent().get_node(".").magnifier_glass()
