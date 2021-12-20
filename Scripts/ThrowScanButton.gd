extends TouchScreenButton

const radius = Vector2(26, 26)
var original_pos = Vector2(208, 75)
var mouse_pos_on_click = original_pos
var moving = false
const return_accel = 10
const threshold = 5

func _physics_process(delta):
	if moving == false:
		if position != original_pos:
			var pos_diff = (original_pos) - position
			position += pos_diff * return_accel * delta

func _input(event):
	print(" ORI: ",original_pos, " POS: ",position)
	if event is InputEventScreenDrag or (event is InputEventScreenTouch and event.is_pressed()):
		if get_global_mouse_position().distance_to(mouse_pos_on_click) > threshold:
			moving = true
			position = get_global_mouse_position() - radius / 2
	
func _on_TouchScreenButton_released():
	if position == original_pos:
		get_parent().get_parent().get_node(".").throw()
		print("atira")
	else:
		print("escaneia")
	moving = false

func _on_TouchScreenButton_pressed():
	mouse_pos_on_click = get_global_mouse_position()
