extends Control

export(String, FILE, "*.tscn") var next_scene

func _process(delta):
	$CanvasLayer/AnimationPlayer.play("Fade")

func _on_animation_finished(anim_name):
	get_tree().change_scene(next_scene)
