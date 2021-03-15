extends Container

export(String, FILE, "*.tscn") var primeira_fase

func _on_StartButton_pressed():
	# Inicia a Primeira Fase
	get_tree().change_scene(primeira_fase)

func _on_HowToPlayButton_pressed():
	# Deixa as intrucoes de como jogar visivel
	$Instrucoes.visible = true
	$Inicio.visible = false

func _on_BackButton_pressed():
	# Deixa as intrucoes de como jogar invisivel
	$Instrucoes.visible = false
	$Inicio.visible = true

func _on_QuitButton_pressed():
	# Encerra a Aplicacao
	get_tree().quit()
