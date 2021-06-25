extends TouchScreenButton

# smaller button radius
const radius = Vector2(5.5, 5.5)
# max distance from the center that the smaller circle can go
# essentially the bigger circle radius
const boudarie = 20
const return_accel = 10
# distance from the center where movement will be detected
const threshold = 5
var ongoing_drag = -1

func _physics_process(delta):
	if ongoing_drag == -1:
		var pos_diff = (Vector2(0,0) - radius) - position
		position += pos_diff * return_accel * delta

func get_button_pos():
	return position + radius

func _input(event):
	if event is InputEventScreenDrag or (event is InputEventScreenTouch and event.is_pressed()):
		var event_dist_from_center = (event.position - get_parent().global_position).length()
		
		if event_dist_from_center <= boudarie * global_scale.x or event.get_index() == ongoing_drag:
			set_global_position(event.position - radius * global_scale)
	
			if get_button_pos().length() > boudarie:
				set_position(get_button_pos().normalized() * boudarie - radius)
			
			ongoing_drag = event.get_index()

	if event is InputEventScreenTouch and !event.is_pressed() and event.get_index() == ongoing_drag:
		ongoing_drag = -1

func get_value():
	if get_button_pos().length() > threshold:
		return get_button_pos().normalized()
	return Vector2(0, 0)
