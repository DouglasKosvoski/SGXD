extends KinematicBody2D

export(int) var MAX_SPEED
export(int) var ACCELERATION
export(int) var JUMP_FORCE
export(float) var FRICTION
export(int) var GRAVITY_FORCE

onready var joystick = $CanvasLayer/Container/Joystick/Joystick_button
const UP = Vector2(0,-1)
var motion = Vector2()

func _physics_process(delta):
	var friction = false
	
	# Horizontal
	if Input.is_action_pressed("ui_right") or joystick.get_value().x > 0.75:
		motion.x = min(motion.x + ACCELERATION, MAX_SPEED)
		$AnimatedSprite.flip_h = false
	elif Input.is_action_pressed("ui_left") or joystick.get_value().x < -0.75:
		motion.x = max(motion.x - ACCELERATION, -MAX_SPEED)
		$AnimatedSprite.flip_h = true
	else:
		motion.x = lerp(motion.x, 0, FRICTION)
		$AnimatedSprite.play("idle")
		
	# Vertical
	if Input.is_action_pressed("ui_up") or joystick.get_value().y < -0.75:
		motion.y = min(motion.y + ACCELERATION, -MAX_SPEED)
	elif Input.is_action_pressed("ui_down") or joystick.get_value().y > 0.75:
		motion.y = max(motion.y - ACCELERATION, +MAX_SPEED)
	else:
		motion.y = lerp(motion.y, 0, FRICTION)
		$AnimatedSprite.play("idle")

	motion = move_and_slide(motion)

func gravity(motion, g):
	motion.y += g
	return motion
