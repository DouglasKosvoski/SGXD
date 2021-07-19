extends Node2D

var lvl_number
	
func set_data():
	$Node2D/lvl_data/level_number.text = str(Globals.current_level)
	$Node2D/lvl_data/Score_number.text = str(Globals.total_score)
	
	if Globals.current_level == 1:
		Globals.lvl1_time_conclusion = OS.get_time()
		$Node2D/lvl_data/level_name.text = "Infância"
		$Node2D/qtd_vaccines/qtd_coletadas.text = str(Globals.lvl1_collected_vaccines.count(1))
		$Node2D/qtd_vaccines/qtd_total.text = str(Globals.lvl1_qtd_vaccines)
		
	elif Globals.current_level == 2:
		Globals.lvl2_time_conclusion = OS.get_time()
		$Node2D/lvl_data/level_name.text = "Adolescência"
		$Node2D/qtd_vaccines/qtd_coletadas.text = str(Globals.lvl2_collected_vaccines.count(1))
		$Node2D/qtd_vaccines/qtd_total.text = str(Globals.lvl2_qtd_vaccines)
		
	elif Globals.current_level == 3:
		Globals.lvl3_time_conclusion = OS.get_time()
		$Node2D/lvl_data/level_name.text = "Idade Adulta"
		$Node2D/qtd_vaccines/qtd_coletadas.text = str(Globals.lvl3_collected_vaccines.count(1))
		$Node2D/qtd_vaccines/qtd_total.text = str(Globals.lvl3_qtd_vaccines)
	
	var hour = str(abs(OS.get_time().hour - Globals.time_session_started.hour))
	var minute = str(abs(OS.get_time().minute - Globals.time_session_started.minute))
	var seconds = str(abs(OS.get_time().second - Globals.time_session_started.second))
	$Node2D/lvl_data/Time_number.text = str(hour+":"+minute+":"+seconds)
	
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
