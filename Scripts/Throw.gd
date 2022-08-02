extends TouchScreenButton

var selected = false
var dropped_position
const RETURN_SPEED = 15
const THRESHOLD = 10
const RADIUS = 13

func _physics_process(delta):
	if selected:
		if get_global_mouse_position().distance_to(global_position) > THRESHOLD:
			global_position = get_global_mouse_position() - Vector2(RADIUS, RADIUS)
	else:
		update_pos()
		
func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and not event.pressed:
			if selected:
				get_parent().get_node(".").magnifier_glass()
			selected = false

func update_pos():
	global_position.x = max(get_parent().global_position.x - RADIUS + 101, 208)
	global_position.y = min(get_parent().global_position.y + RADIUS -   5, 140)
	
func _on_botao_pressed():
	get_parent().get_node(".").magnifier_glass()
	selected = true

func _on_Area2D_area_entered(area):
	if area.name == "NPC_area" && selected:
		area.get_parent().scan()

func _on_Area2D_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("click") or (event is InputEventScreenDrag) or (event is InputEventScreenTouch):
		selected = true

func _on_Timer_timeout():
	selected = false
