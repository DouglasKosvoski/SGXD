extends Node2D

export(int) var dest_x
export(int) var dest_y
export(bool) var flipped

const SPEED = 25
var motion = Vector2()
var original_position
var original_destination
var destination

func _ready():
	$AnimatedSprite.play("walk")
	destination = Vector2(dest_x, dest_y)
	original_destination = destination
	original_position = Vector2(get_global_transform()[2].x, get_global_transform()[2].y)
	if flipped:
		$AnimatedSprite.flip_h = false
	else:
		$AnimatedSprite.flip_h = true

func _process(delta):
	position = position.move_toward(destination, delta * SPEED)
	if flipped:
		if position.x >= original_destination.x:
			destination = original_position
			$AnimatedSprite.flip_h = true
			
		elif position.x <= original_position.x:
			$AnimatedSprite.flip_h = false
			destination = original_destination
	else:
		if position.x >= original_position.x:
			destination = original_destination
			$AnimatedSprite.flip_h = true
			
		elif position.x <= original_destination.x:
			$AnimatedSprite.flip_h = false
			destination = original_position
			
func _on_NPC_Area2D_body_entered(body):
	print("NPC:", body.name)
	if body.name == "Player":
		body.hurt()
