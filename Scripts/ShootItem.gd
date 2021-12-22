extends KinematicBody2D

const SPEED = 80
var motion = Vector2()

func _physics_process(delta):
	motion.x = SPEED
	motion = move_and_slide(motion)
	
	if motion.x < 2:
		self.queue_free()
	pass

func _on_Area2D_body_entered(body):
	if body.name == "KinematicBody2D":
		pass
	else:
		print("Throw detectou: ",body.name)
#	queue_free()
