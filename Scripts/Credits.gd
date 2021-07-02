extends Control

func _ready():
	$AnimationPlayer.play("ScrollUp")

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "ScrollUp":
		get_tree().change_scene("res://Scenes/MainMenu.tscn")

func _on_Exit_pressed():
	get_tree().change_scene("res://Scenes/MainMenu.tscn")
