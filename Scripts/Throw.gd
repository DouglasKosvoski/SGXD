extends Node2D

var selected = false
var start_position
var dropped_position
const RETURN_SPEED = 15
const THRESHOLD = 10
const RADIUS = 13

var lupa = preload("res://Sprites/Itens/magnifier.png")
var botao = preload("res://Sprites/buttons/button_lupa.png")

func _ready():
	update_pos()

func _physics_process(delta):
	update_pos()
	if selected:
		if get_global_mouse_position().distance_to(global_position) > THRESHOLD:
			$Sprite.set_texture(lupa)
			global_position = get_global_mouse_position()

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and not event.pressed:
			if selected:
				get_parent().get_node(".").magnifier_glass()
			selected = false
			$Sprite.set_texture(botao)

func _on_botao_area_entered(area):
	if area.name == "NPC_area" && selected:
		area.get_parent().scan()

func _on_botao_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("click"):
		selected = true

func update_pos():
	global_position.x = max(get_parent().global_position.x + RADIUS + 88, 220)
	global_position.y = min(get_parent().global_position.y + RADIUS + 5, 150)
