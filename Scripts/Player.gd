extends KinematicBody2D

export(int) var MAX_SPEED
export(int) var ACCELERATION
export(float) var FRICTION
export(String, FILE, "*.tres") var vacine_font
export(int) var lvl_qtd_vacinas

export(int) var current_level
export(String, FILE, "*.tscn") var level1
export(String, FILE, "*.tscn") var level2
export(String, FILE, "*.tscn") var level3

onready var joystick = $CanvasLayer/Joystick/Joystick_button
const UP = Vector2(0,-1)
const joystick_trigger = 0.2
var motion = Vector2()
var vacine_counter = 0
var anim

func _ready():
	if current_level == 1:
		anim = $Kid
	elif current_level == 2:
		anim = $Teen
	elif current_level == 3:
		anim = $Adult
	anim.visible = true

func _physics_process(delta):
	animation_control()
	flip_animation()
	motion = move_and_slide(motion)

func animation_control():
	# Horizontal
	if Input.is_action_pressed("ui_right") or joystick.get_value().x > joystick_trigger:
		motion.x = min(motion.x + ACCELERATION, MAX_SPEED)
		anim.play("run")
	elif Input.is_action_pressed("ui_left") or joystick.get_value().x < -joystick_trigger:
		motion.x = max(motion.x - ACCELERATION, -MAX_SPEED)
		anim.play("run")
	else:
		motion.x = lerp(motion.x, 0, FRICTION)
		anim.play("idle")
		
	# Vertical
	if Input.is_action_pressed("ui_up") or joystick.get_value().y < -joystick_trigger:
		motion.y = min(motion.y + ACCELERATION, -MAX_SPEED)
		anim.play("run")
	elif Input.is_action_pressed("ui_down") or joystick.get_value().y > joystick_trigger:
		motion.y = max(motion.y - ACCELERATION, +MAX_SPEED)
		anim.play("run")
	else:
		motion.y = lerp(motion.y, 0, FRICTION)
		anim.play("idle")

func flip_animation():
	if Input.is_action_just_pressed("ui_right") or joystick.get_value().x > 0:
		anim.flip_h = false
	elif Input.is_action_just_pressed("ui_left") or joystick.get_value().x < 0:
		anim.flip_h = true

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
	if current_level == 1:
		get_tree().change_scene(level2)
	elif current_level == 2:
		get_tree().change_scene(level3)
	elif current_level == 3:
		get_tree().change_scene("res://Scenes/Ending.tscn")
