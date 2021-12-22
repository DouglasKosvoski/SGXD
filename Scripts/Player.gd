extends KinematicBody2D

var MAX_SPEED = 50
var ACCELERATION = MAX_SPEED / 10
const FRICTION = 0.5
# How much MAX_SPEED and ACCELERATION will high throughout the levels
const GAIN = 0.1

# how many vaccines are present on the actual level
export(int) var lvl_qtd_vacinas
# level index, indicate what is the current player the player at
export(int) var current_level

# UI touch screen joystick
onready var joystick = $CanvasLayer/Joystick/Joystick_button
# Throwable object
onready var shootItem = preload("res://Scenes/ShootItem.tscn")
# ui vaccine
onready var uiVaccineNotCollected = preload("res://Scenes/ui_vaccine.tscn")
onready var uiVaccineCollected = preload("res://Scenes/ui_vaccine_collected.tscn")

const UP = Vector2(0,-1)
# deadzone
const joystick_trigger = 0.2
var motion = Vector2()
# vaccine colleted on the current level counter
var vacine_counter = 0
# responsible for handling animations
var anim
var priority = 1

func _ready():
	Globals.current_level = current_level
	MAX_SPEED = MAX_SPEED + (MAX_SPEED * (GAIN * current_level))
	ACCELERATION = MAX_SPEED / 10
	
	if AudioManager.sound_on:
		$AudioStreamPlayer.volume_db = AudioManager.sound_volume
	else:
		$AudioStreamPlayer.volume_db = AudioManager.MIN_VOLUME_LEVEL
	anim_setup()
	set_vaccines()

func _physics_process(delta):
	animation_control()
	motion = move_and_slide(motion)

# get the correct set of animations, dependant on level index
func anim_setup():
	var counter = 0
	if current_level == 1:
		anim = $Kid

	elif current_level == 2:
		for i in range(len(Globals.lvl1_collected_vaccines)):
			if Globals.lvl1_collected_vaccines[i] == 1:
				counter += 1

		if counter < Globals.lvl1_qtd_vaccines:
			anim = $Teen_Sick
		else:
			anim = $Teen
		
	elif current_level == 3:
		for i in range(len(Globals.lvl2_collected_vaccines)):
			if Globals.lvl2_collected_vaccines[i] == 1:
				counter += 1

		if counter < Globals.lvl2_qtd_vaccines:
			anim = $Adult_Sick
		else:
			anim = $Adult
			
	anim.visible = true

# control which animation is currently playing and in what order or direction
func animation_control():
	if priority == 4:
		motion = Vector2(0,0)
		take_damage()
	elif priority == 3:
		motion = Vector2(0,0)
		magnifier_glass()
	elif priority == 2:
		motion = Vector2(0,0)
		throw()
	else:
		if Input.is_action_just_pressed("scan"):
			if current_level != 1:
				priority = 3
			return
		elif Input.is_action_just_pressed("throw"):
			if current_level != 1:
				priority = 2
			return
		elif Input.is_action_pressed("ui_right") or joystick.get_value().x >= joystick_trigger:
			motion.x = min(motion.x + ACCELERATION, MAX_SPEED)
			anim.play("run")
			priority = 1
		elif Input.is_action_pressed("ui_left") or joystick.get_value().x <= -joystick_trigger:
			motion.x = max(motion.x - ACCELERATION, -MAX_SPEED)
			anim.play("run")
			priority = 1
		else:
			motion.x = lerp(motion.x, 0, FRICTION)
			anim.play("idle")
			priority = 0
			
		if Input.is_action_pressed("ui_up") or joystick.get_value().y <= -joystick_trigger:
			motion.y = min(motion.y + ACCELERATION, -MAX_SPEED)
			anim.play("run")
			priority = 1
		elif Input.is_action_pressed("ui_down") or joystick.get_value().y > joystick_trigger:
			motion.y = max(motion.y - ACCELERATION, +MAX_SPEED)
			anim.play("run")
			priority = 1
		else:
			motion.y = lerp(motion.y, 0, FRICTION)
			priority = 0

	flip_animation()

# called on collision with npcs
func hurt():
	priority = 4
	
func take_damage():
	anim.play("hurt")
	if anim.animation == "hurt" && anim.frame == anim.frames.get_frame_count("hurt")-1:
		priority = 0

# check which direction the player is moving
func flip_animation():
	if Input.is_action_just_pressed("ui_right") or joystick.get_value().x > 0:
		anim.flip_h = false
	elif Input.is_action_just_pressed("ui_left") or joystick.get_value().x < 0:
		anim.flip_h = true

# responsible for creating and attaching new labels on vaccine colleted signal
func collected(vacine_name):
	# update number of vaccines collected
	vacine_counter += 1
	Globals.total_score += 3000
	if Globals.current_level == 1:
		Globals.lvl1_collected_vaccines[int(vacine_name)] = 1
	elif Globals.current_level == 2:
		Globals.lvl2_collected_vaccines[int(vacine_name)] = 1
	elif Globals.current_level == 3:
		Globals.lvl3_collected_vaccines[int(vacine_name)] = 1
	set_vaccines()

# currently checks if every vaccine are collected
# futher on will also manage timeout on level timer
func level_complete():
	if current_level == 1:
		Globals.lvl1_time_conclusion = OS.get_time()
		get_tree().change_scene("res://Scenes/Levels/Level02.tscn")
	elif current_level == 2:
		Globals.lvl2_time_conclusion = OS.get_time()
		get_tree().change_scene("res://Scenes/Levels/Level03.tscn")
	elif current_level == 3:
		Globals.lvl3_time_conclusion = OS.get_time()
		get_tree().change_scene("res://Scenes/Final_Result.tscn")

func magnifier_glass():
	priority = 3
	anim.play("magnifier")
	if anim.animation == "magnifier" && anim.frame == anim.frames.get_frame_count("magnifier")-1:
		priority = 0
	
func throw():
	priority = 2
	anim.play("throw")

	if anim.animation == "throw" && anim.frame == anim.frames.get_frame_count("throw")-1:
		priority = 0
#		spawnShoot()

func spawnShoot():
	var flagPrev = Vector2()
	var flag = shootItem.instance()
	var size = flag.get_node("Lupa/Sprite").texture.get_size()
	flag.set_position(Vector2(position.x+(size.x*2), position.y))
	get_tree().get_root().add_child(flag)
	
func set_vaccines():
	# max quantity of vaccines per line
	var inline_qtd = 8
	# spacing around each icon
	var margin = 10
	# pixel size of the icon
	var vaccine_size = 13
	
	for i in range(lvl_qtd_vacinas):
		# set new vaccine position on the screen
		var vacPos = Vector2((i * vaccine_size) + margin, margin)
		# check for a line break the let the spacing "breath" a little
		if i > inline_qtd:
			vacPos.x = ((i - inline_qtd-1) * vaccine_size) + margin
			vacPos.y = margin + vaccine_size
			
		# create new vaccine ui icon
		var vaccine = uiVaccineNotCollected.instance()
		if vacine_counter > i:
			vaccine = uiVaccineCollected.instance()
		
		# add to container
		vaccine.set_position(Vector2(vacPos.x, vacPos.y))
		$"CanvasLayer/Vacinas Container".add_child(vaccine)
