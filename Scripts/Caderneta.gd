extends Node2D

onready var not_collected = preload("res://Scenes/missing_vaccine_booklet.tscn")
onready var collected = preload("res://Scenes/collected_vaccine_booklet.tscn")
var lvl_number
var qtd_vac
var vac_arr
var from_level_complete = false

func set_data():
	$Node2D/lvl_data/level_number.text = str(Globals.current_level)
	$Node2D/lvl_data/Score_number.text = str(Globals.total_score)
	
	if Globals.current_level == 1:
		qtd_vac = Globals.lvl1_qtd_vaccines
		vac_arr = Globals.lvl1_collected_vaccines
		Globals.lvl1_time_conclusion = OS.get_time()
		$Node2D/lvl_data/level_name.text = "Infância"
		$Node2D/qtd_vaccines/qtd_coletadas.text = str(Globals.lvl1_collected_vaccines.count(1))
		$Node2D/qtd_vaccines/qtd_total.text = str(Globals.lvl1_qtd_vaccines)
		
	elif Globals.current_level == 2:
		qtd_vac = Globals.lvl2_qtd_vaccines
		vac_arr = Globals.lvl2_collected_vaccines
		Globals.lvl2_time_conclusion = OS.get_time()
		$Node2D/lvl_data/level_name.text = "Adolescência"
		$Node2D/qtd_vaccines/qtd_coletadas.text = str(Globals.lvl2_collected_vaccines.count(1))
		$Node2D/qtd_vaccines/qtd_total.text = str(Globals.lvl2_qtd_vaccines)
		
	elif Globals.current_level == 3:
		qtd_vac = Globals.lvl3_qtd_vaccines
		vac_arr = Globals.lvl3_collected_vaccines
		Globals.lvl3_time_conclusion = OS.get_time()
		$Node2D/lvl_data/level_name.text = "Idade Adulta"
		$Node2D/qtd_vaccines/qtd_coletadas.text = str(Globals.lvl3_collected_vaccines.count(1))
		$Node2D/qtd_vaccines/qtd_total.text = str(Globals.lvl3_qtd_vaccines)
	
	var hour = abs(OS.get_time().hour - Globals.time_session_started.hour)
	var minute = abs(OS.get_time().minute - Globals.time_session_started.minute)
	var seconds = abs(OS.get_time().second - Globals.time_session_started.second)
	if hour < 10:
		hour = str("0"+str(hour))
	if minute < 10:
		minute = str("0"+str(minute))
	if seconds < 10:
		seconds = str("0"+str(seconds))
	$Node2D/lvl_data/Time_number.text = str(str(hour)+":"+str(minute)+":"+str(seconds))
	
	set_vaccines()

func set_vaccines():
	# max quantity of vaccines per line
	var inline_qtd = 4
	# spacing around each icon
	var margin = 10
	# pixel size of the icon
	var vaccine_size = 27
	var start_position = Vector2(137, 22)
	
	for i in range(qtd_vac):
		var vaccine
		if vac_arr[i] == 1:
			vaccine = collected.instance()
		else:
			vaccine = not_collected.instance()

		var vacPos = Vector2(start_position.x, start_position.y)
		vacPos.x = start_position.x + ((i%inline_qtd)*vaccine_size)
		
		if i > inline_qtd-1:
			vacPos.y = start_position.y + (vaccine_size)
		if i > (inline_qtd*2)-1:
			vacPos.y = start_position.y + (vaccine_size*2)
		if i > (inline_qtd*3)-1:
			vacPos.y = start_position.y + (vaccine_size*3)
		
		# add to container
		vaccine.set_position(Vector2(vacPos.x, vacPos.y))
		$"Node2D/Vaccines_holder".add_child(vaccine)

func complete_from_area2d(asd):
	from_level_complete = asd
	_on_CadernetaButton_pressed()
	
func _on_CadernetaButton_pressed():
	$Node2D.visible = true
	$Icon.visible = false
	get_tree().paused = true
	get_parent().get_parent().get_parent().get_child(6).get_child(0).get_child(0).visible = false
	set_data()
	
func _on_Return_Button_pressed():
	$Node2D.visible = false
	$Icon.visible = true
	get_tree().paused = false
	get_parent().get_parent().get_parent().get_child(6).get_child(0).get_child(0).visible = true
	
	if from_level_complete == true:
		get_parent().get_parent().level_complete()
