extends KinematicBody2D

const UP = Vector2(0, -1)
const ACCELERATION = 50
const FRICTION = 0.2
const MAX_SPEED = 400
const JUMP_FORCE = -800
const GRAVITY_FORCE = 50
var motion = Vector2()

func _physics_process(delta):
	var friction = false
	
	# Horizontal
	if Input.is_action_pressed("ui_right"):
		motion.x = min(motion.x + ACCELERATION, MAX_SPEED)
		$AnimatedSprite.flip_h = false
	elif Input.is_action_pressed("ui_left"):
		motion.x = max(motion.x - ACCELERATION, -MAX_SPEED)
		$AnimatedSprite.flip_h = true
	else:
		motion.x = lerp(motion.x, 0, FRICTION)
		$AnimatedSprite.play("idle")
		
	# Vertical
	if Input.is_action_pressed("ui_up"):
		motion.y = min(motion.y + ACCELERATION, -MAX_SPEED)
	elif Input.is_action_pressed("ui_down"):
		motion.y = max(motion.y - ACCELERATION, +MAX_SPEED)
	else:
		motion.y = lerp(motion.y, 0, FRICTION)
		$AnimatedSprite.play("idle")

	motion = move_and_slide(motion)

func gravity(motion, g):
	motion.y += g
	return motion
