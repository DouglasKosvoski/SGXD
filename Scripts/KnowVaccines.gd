extends Control

export(String, FILE, "*.tscn") var previous_scene

const vac_names = [
	"BCG (Bacilo Calmette-Guerin)",
	"Hepatite B",
	"Penta",
	"Poliomielite",
	"Pneumocócica 10 Valente",
	"Rotavírus humano",
	"DTP",
	"Hepatite A",
	"Tetra viral",
	"Varicela atenuada",
	"HPV",
	"Meningocócica C",
	"Febre Amarela",
	"Tríplice viral",
	"Pneumocócica 23 Valente",
	"Dupla adulto (dT)",
	"dTpa (Tríplice bacteriana acelular do tipo adulto)",
	"Influenza"
]

const vac_fin = [
	"Previne contra as formas graves de tuberculose",
	"Previne hepatite B",
	"Previne difteria, tétano, coqueluche, hepatite B e também infecções",
	"Previne poliomielite",
	"Previne pneumonia, otite, meningite e outras doenças causadas pelo",
	"Previne diarreia por rotavírus",
	"Previne difteria, tétano e coqueluche",
	"Previne contra Hepatite A",
	"Previne sarampo, rubéola, caxumba e varicela/catapora",
	"Previne varicela/catapora",
	"Previne o papiloma, vírus humano que causa cânceres e verrugas genitais",
	"Previne doença invasiva causada por Neisseria meningitidis do sorogrupo C",
	"Previne Febre Amarela",
	"Previne sarampo, caxumba e rubéola",
	"Previne pneumonia, otite, meningite e outras doenças causadas pelo Pneumococo",
	"Previne difteria e tétano",
	"Previne difteria, tétano e coqueluche",
	"Previne contra o vírus da Influenza"
]

const vac_apl = [
	"A aplicação ocorre em dose única",
	"A dose deve ser aplicada logo após o nascimento",
	"A aplicação ocorre em três doses",
	"A aplicação ocorre em três doses",
	"A aplicação ocorre em três doses",
	"A aplicação ocorre em duas doses",
	"A aplicação ocorre em duas doses",
	"A aplicação ocorre em uma dose",
	"A aplicação ocorre em uma dose",
	"A aplicação ocorre em uma dose",
	"A aplicação ocorre em duas doses",
	"A aplicação ocorre em dose única ou reforço, conforme a situação vacinal de cada indivíduo",
	"A aplicação ocorre em dose única, conforme a situação vacinal de cada indivíduo",
	"A aplicação depende da situação vacinal de cada indivíduo",
	"A aplicação deve ser feita com doses de reforço, conforme a situação vacinal de cada indivíduo. Quem nunca foi vacinado deve receber duas doses no período dos 20 a 29 anos e uma dose entre 30 a 49 anos de idade",
	"A aplicação deve ser feita com doses de reforço a cada 10 anos",
	"A aplicação deve ocorrer em uma dose a cada gestação ou no puerpério",
	"A aplicação deve ser feita com uma dose anual"
]


func _on_BCG_pressed():
	$"Text Container/VBoxContainer/Name".text = vac_names[0]
	$"Text Container/VBoxContainer/Finalidade".text = vac_fin[0] + ".\n" + vac_apl[0] + "."

func _on_Hepatite_B_pressed():
	$"Text Container/VBoxContainer/Name".text = vac_names[1]
	$"Text Container/VBoxContainer/Finalidade".text = vac_fin[1] + ".\n" + vac_apl[1] + "."

func _on_Penta_pressed():
	$"Text Container/VBoxContainer/Name".text = vac_names[2]
	$"Text Container/VBoxContainer/Finalidade".text = vac_fin[2] + ".\n" + vac_apl[2] + "."

func _on_Poliomielite_pressed():
	$"Text Container/VBoxContainer/Name".text = vac_names[3]
	$"Text Container/VBoxContainer/Finalidade".text = vac_fin[3] + ".\n" + vac_apl[3] + "."

func _on_Pneumoccica_10_Valente_pressed():
	$"Text Container/VBoxContainer/Name".text = vac_names[4]
	$"Text Container/VBoxContainer/Finalidade".text = vac_fin[4] + ".\n" + vac_apl[4] + "."

func _on_Rotavrus_humano_pressed():
	$"Text Container/VBoxContainer/Name".text = vac_names[5]
	$"Text Container/VBoxContainer/Finalidade".text = vac_fin[5] + ".\n" + vac_apl[5] + "."

func _on_DTP_pressed():
	$"Text Container/VBoxContainer/Name".text = vac_names[6]
	$"Text Container/VBoxContainer/Finalidade".text = vac_fin[6] + ".\n" + vac_apl[6] + "."

func _on_Hepatite_A_pressed():
	$"Text Container/VBoxContainer/Name".text = vac_names[7]
	$"Text Container/VBoxContainer/Finalidade".text = vac_fin[7] + ".\n" + vac_apl[7] + "."

func _on_Tetra_viral_pressed():
	$"Text Container/VBoxContainer/Name".text = vac_names[8]
	$"Text Container/VBoxContainer/Finalidade".text = vac_fin[8] + ".\n" + vac_apl[8] + "."

func _on_Varicela_atenuada_pressed():
	$"Text Container/VBoxContainer/Name".text = vac_names[9]
	$"Text Container/VBoxContainer/Finalidade".text = vac_fin[9] + ".\n" + vac_apl[9] + "."

func _on_HPV_pressed():
	$"Text Container/VBoxContainer/Name".text = vac_names[10]
	$"Text Container/VBoxContainer/Finalidade".text = vac_fin[10] + ".\n" + vac_apl[10] + "."

func _on_Meningoccica_C_pressed():
	$"Text Container/VBoxContainer/Name".text = vac_names[11]
	$"Text Container/VBoxContainer/Finalidade".text = vac_fin[11] + ".\n" + vac_apl[11] + "."

func _on_Febre_Amarela_pressed():
	$"Text Container/VBoxContainer/Name".text = vac_names[12]
	$"Text Container/VBoxContainer/Finalidade".text = vac_fin[12] + ".\n" + vac_apl[12] + "."

func _on_Trplice_viral_pressed():
	$"Text Container/VBoxContainer/Name".text = vac_names[13]
	$"Text Container/VBoxContainer/Finalidade".text = vac_fin[13] + ".\n" + vac_apl[13] + "."

func _on_Pneumoccica_23_Valente_pressed():
	$"Text Container/VBoxContainer/Name".text = vac_names[14]
	$"Text Container/VBoxContainer/Finalidade".text = vac_fin[14] + ".\n" + vac_apl[14] + "."

func _on_Dupla_adulto_dT_pressed():
	$"Text Container/VBoxContainer/Name".text = vac_names[15]
	$"Text Container/VBoxContainer/Finalidade".text = vac_fin[15] + ".\n" + vac_apl[15] + "."

func _on_dTpa_pressed():
	$"Text Container/VBoxContainer/Name".text = vac_names[16]
	$"Text Container/VBoxContainer/Finalidade".text = vac_fin[16] + ".\n" + vac_apl[16] + "."

func _on_Influenza_pressed():
	$"Text Container/VBoxContainer/Name".text = vac_names[17]
	$"Text Container/VBoxContainer/Finalidade".text = vac_fin[17] + ".\n" + vac_apl[17] + "."


func _on_Back_Button_pressed():
	get_tree().change_scene(previous_scene)
