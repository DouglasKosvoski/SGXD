extends Node2D

export(int) var dest_x
export(int) var dest_y
export(bool) var flipped
export(bool) var robot

var SPEED = 25
var motion = Vector2()
var original_position
var original_destination
var destination
var scanned = false

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
	if body.name == "Player":
		body.hurt()

func scan():
	if robot && !scanned:
		scanned = true
		Globals.total_scans += 1
		$AnimatedSprite.visible = false
		$AnimatedSprite_Robot.visible = true
		$AnimatedSprite_Robot.play("die")
		$AnimatedSprite_Robot.flip_h = $AnimatedSprite.flip_h
		SPEED = 0
	elif !robot:
		$Verified.visible = true
#
#func _on_NPC_area_area_entered(area):
#	print("Npc detectou aa: ", area, area.name)
