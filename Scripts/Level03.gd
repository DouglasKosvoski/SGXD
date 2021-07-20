extends Node2D

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		get_node("Player/CanvasLayer/Caderneta")._on_CadernetaButton_pressed(true)
