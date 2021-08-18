extends Control

export(String, FILE, "*.tscn") var main_menu
export(String) var link_avaliar
export(String, FILE, "*.tscn") var top_score
export(String, FILE, "*.tscn") var play_again
export(String, FILE, "*.tscn") var vaccines


func _on_Menu_principal_pressed():
	get_tree().change_scene(main_menu)

func _on_Avaliar_pressed():
	OS.shell_open(link_avaliar)

func _on_Melhores_tempos_pressed():
	get_tree().change_scene(top_score)

func _on_Jogar_novamente_pressed():
	get_tree().change_scene(play_again)

func _on_Conheca_as_vacinas_pressed():
	get_tree().change_scene(vaccines)
