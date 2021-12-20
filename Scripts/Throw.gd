extends Node2D

var selected = false
var start_position
var dropped_position
const RETURN_SPEED = 15
const THRESHOLD = 1
const RADIUS = 13
var lupa = preload("res://Sprites/Itens/magnifier.png")
var botao = preload("res://Sprites/buttons/button_lupa.png")

func _ready():
	global_position.x += RADIUS
	global_position.y += RADIUS
	start_position = Vector2(global_position.x, global_position.y)
	dropped_position = start_position
	
func _on_Area2D_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("click"):
		selected = true

func _physics_process(delta):
	if selected:
		if get_global_mouse_position().distance_to(start_position) > THRESHOLD:
			$Sprite.set_texture(lupa)
			global_position = lerp(global_position, get_global_mouse_position(), RETURN_SPEED*delta)
	else:
		global_position = lerp(global_position, start_position, RETURN_SPEED*delta)
		
func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and not event.pressed:
			dropped_position = global_position

			if selected:
				if dropped_position.distance_to(start_position) < THRESHOLD:
					get_parent().get_parent().get_node(".").throw()
				else:
					get_parent().get_parent().get_node(".").magnifier_glass()
			selected = false
			$Sprite.set_texture(botao)

func _on_Area2D_area_entered(area):
	if area.name == "NPC_area":
		print("12123123")
#		area.get_parent().asd()
	else:
		print("Lupa detectou: ", area)
