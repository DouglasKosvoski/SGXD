extends KinematicBody2D

const UP = Vector2(0, -1)
const ACCELERATION = 50
const FRICTION = 0.2
const MAX_SPEED = 200
const JUMP_FORCE = -800
const GRAVITY_FORCE = 50
var motion = Vector2()

func _physics_process(delta):
	var friction = false
	
	if Input.is_action_pressed("ui_right"):
		motion.x = min(motion.x + ACCELERATION, MAX_SPEED)
		$Sprite.flip_h = false
		$Sprite.play("run")
	elif Input.is_action_pressed("ui_left"):
		motion.x = max(motion.x - ACCELERATION, -MAX_SPEED)
		$Sprite.flip_h = true
		$Sprite.play("run")
	else:
		friction = true
		$Sprite.play("idle")
		
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			motion.y = JUMP_FORCE
		if friction == true:
			motion.x = lerp(motion.x, 0, FRICTION)
	else:
		if motion.y < 0:
			$Sprite.play("jump")
		else:
			$Sprite.play("fall")
		if friction == true:
			motion.x = lerp(motion.x, 0, FRICTION*0.5)
			
	motion = move_and_slide(motion, UP)
	motion = gravity(motion, GRAVITY_FORCE)
	
func gravity(motion, g):
	motion.y += g
	return motion
