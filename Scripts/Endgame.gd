extends Control

export(String, FILE, "*.tscn") var main_menu
export(String, FILE, "*.tscn") var top_score
export(String, FILE, "*.tscn") var play_again
export(String, FILE, "*.tscn") var vaccines

func _ready():
	if AudioManager.sound_on:
		$AudioStreamPlayer.volume_db = AudioManager.sound_volume
	else:
		$AudioStreamPlayer.volume_db = AudioManager.MIN_VOLUME_LEVEL
	$AudioStreamPlayer.stream = AudioManager.ending_music
	$AudioStreamPlayer.play()


func _on_Menu_principal_pressed():
	get_tree().change_scene(main_menu)

func _on_Avaliar_pressed():
	OS.shell_open(Globals.form_link)

func _on_Melhores_tempos_pressed():
	get_tree().change_scene(top_score)

func _on_Jogar_novamente_pressed():
	get_tree().change_scene(play_again)

func _on_Conheca_as_vacinas_pressed():
	get_tree().change_scene(vaccines)


func _on_AudioStreamPlayer_finished():
	$AudioStreamPlayer.play()
