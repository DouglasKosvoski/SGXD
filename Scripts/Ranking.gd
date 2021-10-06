extends Control

export(String, FILE, "*.tscn") var next_scene

func _ready():
	$AudioStreamPlayer.stream = AudioManager.ranking_sfx
	$AudioStreamPlayer.play()
	$CanvasLayer/Name.add_font_override("font", load("res://Addons/game_font.tres"))

func _on_AudioStreamPlayer_finished():
	if $AudioStreamPlayer.stream == AudioManager.button_sfx:
		get_tree().change_scene(next_scene)

func _on_Delete_pressed():
	var text = $CanvasLayer/Name.text
	text.erase(text.length() - 1, 1)
	$CanvasLayer/Name.text = text
	
func _on_Continue_pressed():
	Globals.player_name = $CanvasLayer/Name.text
	get_tree().change_scene("res://Scenes/MainMenu.tscn")

# Uppercase characters
func _on_A_pressed():
	$CanvasLayer/Name.text += "A"
func _on_B_pressed():
	$CanvasLayer/Name.text += "B"
func _on_C_pressed():
	$CanvasLayer/Name.text += "C"
func _on_D_pressed():
	$CanvasLayer/Name.text += "D"
func _on_E_pressed():
	$CanvasLayer/Name.text += "E"
func _on_F_pressed():
	$CanvasLayer/Name.text += "F"
func _on_G_pressed():
	$CanvasLayer/Name.text += "G"
func _on_H_pressed():
	$CanvasLayer/Name.text += "H"
func _on_I_pressed():
	$CanvasLayer/Name.text += "I"
func _on_J_pressed():
	$CanvasLayer/Name.text += "J"
func _on_K_pressed():
	$CanvasLayer/Name.text += "K"
func _on_L_pressed():
	$CanvasLayer/Name.text += "L"
func _on_M_pressed():
	$CanvasLayer/Name.text += "M"
func _on_N_pressed():
	$CanvasLayer/Name.text += "N"
func _on_O_pressed():
	$CanvasLayer/Name.text += "O"
func _on_P_pressed():
	$CanvasLayer/Name.text += "P"
func _on_Q_pressed():
	$CanvasLayer/Name.text += "Q"
func _on_R_pressed():
	$CanvasLayer/Name.text += "R"
func _on_S_pressed():
	$CanvasLayer/Name.text += "S"
func _on_T_pressed():
	$CanvasLayer/Name.text += "T"
func _on_U_pressed():
	$CanvasLayer/Name.text += "U"
func _on_V_pressed():
	$CanvasLayer/Name.text += "V"
func _on_W_pressed():
	$CanvasLayer/Name.text += "W"
func _on_X_pressed():
	$CanvasLayer/Name.text += "X"
func _on_Y_pressed():
	$CanvasLayer/Name.text += "Y"
func _on_Z_pressed():
	$CanvasLayer/Name.text += "Z"

# Lowercase Characters
func _on_a_pressed():
	$CanvasLayer/Name.text += "a"
func _on_b_pressed():
	$CanvasLayer/Name.text += "b"
func _on_c_pressed():
	$CanvasLayer/Name.text += "c"
func _on_d_pressed():
	$CanvasLayer/Name.text += "d"
func _on_e_pressed():
	$CanvasLayer/Name.text += "e"
func _on_f_pressed():
	$CanvasLayer/Name.text += "f"
func _on_g_pressed():
	$CanvasLayer/Name.text += "g"
func _on_h_pressed():
	$CanvasLayer/Name.text += "h"
func _on_i_pressed():
	$CanvasLayer/Name.text += "i"
func _on_j_pressed():
	$CanvasLayer/Name.text += "j"
func _on_k_pressed():
	$CanvasLayer/Name.text += "k"
func _on_l_pressed():
	$CanvasLayer/Name.text += "l"
func _on_m_pressed():
	$CanvasLayer/Name.text += "m"
func _on_n_pressed():
	$CanvasLayer/Name.text += "n"
func _on_o_pressed():
	$CanvasLayer/Name.text += "o"
func _on_p_pressed():
	$CanvasLayer/Name.text += "p"
func _on_q_pressed():
	$CanvasLayer/Name.text += "q"
func _on_r_pressed():
	$CanvasLayer/Name.text += "r"
func _on_s_pressed():
	$CanvasLayer/Name.text += "s"
func _on_t_pressed():
	$CanvasLayer/Name.text += "t"
func _on_u_pressed():
	$CanvasLayer/Name.text += "u"
func _on_v_pressed():
	$CanvasLayer/Name.text += "v"
func _on_w_pressed():
	$CanvasLayer/Name.text += "w"
func _on_x_pressed():
	$CanvasLayer/Name.text += "x"
func _on_y_pressed():
	$CanvasLayer/Name.text += "y"
func _on_z_pressed():
	$CanvasLayer/Name.text += "z"

# numeros
func _on_0_pressed():
	$CanvasLayer/Name.text += "0"
func _on_1_pressed():
	$CanvasLayer/Name.text += "1"
func _on_2_pressed():
	$CanvasLayer/Name.text += "2"
func _on_3_pressed():
	$CanvasLayer/Name.text += "3"
func _on_4_pressed():
	$CanvasLayer/Name.text += "4"
func _on_5_pressed():
	$CanvasLayer/Name.text += "5"
func _on_6_pressed():
	$CanvasLayer/Name.text += "6"
func _on_7_pressed():
	$CanvasLayer/Name.text += "7"
func _on_8_pressed():
	$CanvasLayer/Name.text += "8"
func _on_9_pressed():
	$CanvasLayer/Name.text += "9"

# Symbols
func _on_barra_pressed():
	$CanvasLayer/Name.text += "/"
func _on_underline_pressed():
	$CanvasLayer/Name.text += "_"
func _on_hifen_pressed():
	$CanvasLayer/Name.text += "-"
func _on_exclamacao_pressed():
	$CanvasLayer/Name.text += "!"
func _on_interrogacao_pressed():
	$CanvasLayer/Name.text += "?"
func _on_crase_pressed():
	$CanvasLayer/Name.text += "`"
func _on_acento_pressed():
	$CanvasLayer/Name.text += "´"
