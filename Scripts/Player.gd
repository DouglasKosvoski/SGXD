extends KinematicBody2D

export(int) var MAX_SPEED
export(int) var ACCELERATION
export(int) var JUMP_FORCE
export(float) var FRICTION
export(int) var GRAVITY_FORCE
export(String, FILE, "*.tres") var vacine_font
export(int) var lvl_qtd_vacinas

onready var joystick = $CanvasLayer/Container/Joystick/Joystick_button
const UP = Vector2(0,-1)
const joystick_trigger = 0.2
var motion = Vector2()
var vacine_counter = 0

func _physics_process(delta):
	# Horizontal
	if Input.is_action_pressed("ui_right") or joystick.get_value().x > joystick_trigger:
		motion.x = min(motion.x + ACCELERATION, MAX_SPEED)
	elif Input.is_action_pressed("ui_left") or joystick.get_value().x < -joystick_trigger:
		motion.x = max(motion.x - ACCELERATION, -MAX_SPEED)
	else:
		motion.x = lerp(motion.x, 0, FRICTION)
		$AnimatedSprite.play("idle")
		
	# Vertical
	if Input.is_action_pressed("ui_up") or joystick.get_value().y < -joystick_trigger:
		motion.y = min(motion.y + ACCELERATION, -MAX_SPEED)
	elif Input.is_action_pressed("ui_down") or joystick.get_value().y > joystick_trigger:
		motion.y = max(motion.y - ACCELERATION, +MAX_SPEED)
	else:
		motion.y = lerp(motion.y, 0, FRICTION)
		$AnimatedSprite.play("idle")

	flip_animation()
	motion = move_and_slide(motion)

func flip_animation():
	if Input.is_action_just_pressed("ui_right") or joystick.get_value().x > 0:
		$AnimatedSprite.flip_h = false
	elif Input.is_action_just_pressed("ui_left") or joystick.get_value().x < 0:
		$AnimatedSprite.flip_h = true

func gravity(motion, g):
	motion.y += g
	return motion

func collected(vacine_name):
	var vbox = $CanvasLayer/Vacinas/VBoxContainer
	var label = Label.new()
	label.text = vacine_name
	label.name = vacine_name
	label.add_font_override("font", load(vacine_font))
	label.get("custom_fonts/font").set_size(36)
	vbox.add_child(label)
	vacine_counter += 1
	$CanvasLayer/Vacinas/Label.text = "Vacinas Coletadas: %s/%s" % [vacine_counter, lvl_qtd_vacinas]

	if vacine_counter == lvl_qtd_vacinas:
		level_win()

func level_win():
	get_tree().paused = true
	$CanvasLayer/Container.visible = false
	$CanvasLayer/Vacinas.visible = false
	get_parent().get_node("PauseMenu/CanvasLayer/Container").visible = false
	get_parent().get_node("LevelComplete/CanvasLayer/Container").visible = true