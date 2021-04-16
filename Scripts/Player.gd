extends KinematicBody2D

var MAX_SPEED = 50
var ACCELERATION = MAX_SPEED/10
const FRICTION = 0.5
# How much MAX_SPEED and ACCELERATION will high throughout the levels
const GAIN = 0.1

export(String, FILE, "*.tres") var vacine_font
# how many vaccines are present on the actual level
export(int) var lvl_qtd_vacinas
# level index, indicate what is the current player the player at
export(int) var current_level

# UI touch screen joystick
onready var joystick = $CanvasLayer/Joystick/Joystick_button
const UP = Vector2(0,-1)
# deadzone
const joystick_trigger = 0.2
var motion = Vector2()
# vaccine colleted on the current level counter
var vacine_counter = 0
# responsible for handling animations
var anim

func _ready():
	MAX_SPEED = MAX_SPEED + (MAX_SPEED * (GAIN * current_level))
	ACCELERATION = MAX_SPEED / 10
	anim_setup()

func _physics_process(delta):
	animation_control()
	motion = move_and_slide(motion)
	
# get the correct set of animations, dependant on level index
func anim_setup():
	if current_level == 1:
		anim = $Kid
	elif current_level == 2:
		anim = $Teen
	elif current_level == 3:
		anim = $Adult
	anim.visible = true

# control which animation is currently playing and in what order or direction
func animation_control():
	if Input.is_action_pressed("ui_right") or joystick.get_value().x >= joystick_trigger:
		motion.x = min(motion.x + ACCELERATION, MAX_SPEED)
		anim.play("run")
	elif Input.is_action_pressed("ui_left") or joystick.get_value().x <= -joystick_trigger:
		motion.x = max(motion.x - ACCELERATION, -MAX_SPEED)
		anim.play("run")
	else:
		motion.x = lerp(motion.x, 0, FRICTION)
		anim.play("idle")
		
	if Input.is_action_pressed("ui_up") or joystick.get_value().y <= -joystick_trigger:
		motion.y = min(motion.y + ACCELERATION, -MAX_SPEED)
		anim.play("run")
	elif Input.is_action_pressed("ui_down") or joystick.get_value().y > joystick_trigger:
		motion.y = max(motion.y - ACCELERATION, +MAX_SPEED)
	else:
		motion.y = lerp(motion.y, 0, FRICTION)

	flip_animation()

# check which direction the player is moving
func flip_animation():
	if Input.is_action_just_pressed("ui_right") or joystick.get_value().x > 0:
		anim.flip_h = false
	elif Input.is_action_just_pressed("ui_left") or joystick.get_value().x < 0:
		anim.flip_h = true

# responsible for creating and attaching new labels on vaccine colleted signal
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
		level_complete()

# currently checks if every vaccine are collected
# futher on will also manage timeout on level timer
func level_complete():
	if current_level == 1:
		get_tree().change_scene("res://Scenes/Levels/Level02.tscn")
	elif current_level == 2:
		get_tree().change_scene("res://Scenes/Levels/Level03.tscn")
	elif current_level == 3:
		get_tree().change_scene("res://Scenes/Ending.tscn")
