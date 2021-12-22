extends Node2D

var counter = 0
export(String, FILE, "*.tscn") var next_scene

# Figuras sobre as estatisticas
var fig1 = load("res://Figures/figura 25.png")
var fig2 = load("res://Figures/figura 26.png")
var fig3 = load("res://Figures/figura 27.png")
var fig4 = load("res://Figures/figura 28.png")

# Figuras ilustrativas
var fig5 = load("res://Figures/figura 21.png")
var fig6 = load("res://Figures/figura 22.png")
var fig7 = load("res://Figures/figura 23.png")
var fig8 = load("res://Figures/figura 24.png")

# Mensagens a serem exibidas
const msg_retorno = "Volte para o jogo, colete todas as vacinas e realize a checagem de toda a desinformação.\n\nSó assim poderá garantir o título de Super Gotinha!"
const msg_bonus = "Aproveite e pegue sua carteira de vacinação e vá até uma Unidade de Saúde para verificar se suas vacinas estão em dia!\nVacinas são seguras, eficazes e salvam vidas.\n\nImunize-se!"
const msg_finais = [
	"Parabéns, Super Gotinha!\n\nVocê adquiriu a imunização contra várias doenças e contra a desinformação.",
	"O Gotinha adquiriu imunidade!\n\nMas deixou a desejar ao deixar de realizar todas as checagens, logo, você é um alvo fácil para práticas de desinformação.",
	"As checagens foram realizadas, mas de nada adianta se você não colocar seus conhecimentos em prática.",
	"Atenção!\n\nVocê chegou aqui desinformado e sem estar completamente imunizado."
]

func _ready():
	var time_now = OS.get_unix_time()
	var elapsed = time_now - Globals.time_start
	var minutes = elapsed / 60
	var seconds = elapsed % 60
	var str_elapsed = "%02d : %02d" % [minutes, seconds]
	
	var total_vac = Globals.lvl1_qtd_vaccines + Globals.lvl2_qtd_vaccines + Globals.lvl3_qtd_vaccines
	$"estatistica/Tempo total".text = str(str_elapsed)
	
	var collected_vac = 0
	for i in range(len(Globals.lvl1_collected_vaccines)):
		if Globals.lvl1_collected_vaccines[i] == 1:
			collected_vac += 1
			
	for i in range(len(Globals.lvl2_collected_vaccines)):
		if Globals.lvl2_collected_vaccines[i] == 1:
			collected_vac += 1
			
	for i in range(len(Globals.lvl2_collected_vaccines)):
		if Globals.lvl2_collected_vaccines[i] == 1:
			collected_vac += 1
	$"estatistica/Vacinas Coletadas".text = str(collected_vac) + " / " + str(total_vac)

	var scans_made = 2
	var total_scans = 34
	
	var tds_vac = false
	var tds_scans = false
	# pegou todas as vacinas
	if collected_vac == total_vac:
		tds_vac = true
		
#	realizou todas as verificacoes
	if scans_made == total_scans:
		tds_scans = true
	
	if tds_scans && tds_vac:
		$estatistica/Fundo.texture = fig1
		$figura/Fundo.texture = fig5
		$msg/texto.text = msg_finais[0]
	elif tds_scans:
		$estatistica/Fundo.texture = fig2
		$figura/Fundo.texture = fig7
		$msg/texto.text = msg_finais[1]
	elif tds_vac:
		$estatistica/Fundo.texture = fig3
		$figura/Fundo.texture = fig6
		$msg/texto.text = msg_finais[2]
	else:
		$estatistica/Fundo.texture = fig4
		$figura/Fundo.texture = fig8
		$msg/texto.text = msg_finais[3]



func _on_Timer_timeout():
	counter += 1
	
	if counter == 1:
		$estatistica.visible = false
		$msg.visible = true
	elif counter == 2:
		$msg/texto.text = msg_retorno
	elif counter == 3:
		$msg/texto.text = msg_bonus
	elif counter == 4:
		$msg.visible = false
		$figura.visible = true
	elif counter == 5:
		get_tree().change_scene(next_scene)
