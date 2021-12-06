extends Control

export(String, FILE, "*.tscn") var next_scene

var scores = [90000, 80000, 70000, 60000]
var names = ["Ana", "Douglas", "Lucas", "André"]

func _ready():
	if Globals.player_name in ["", " "]:
		Globals.player_name = "Você"
	
	var player_score_assigned = false
	$score.text = ""
	$name.text = ""
	print($name.theme.get_constant_list("Line spacing"))
	$name.set_constant( String, String, 6)
	var i = 0
	while i < len(scores):
		if player_score_assigned == false and Globals.total_score >= scores[i]:
			$score.text += " " + str(Globals.total_score) + "\n"
			$name.text += " " + str(Globals.player_name) + "\n"
			player_score_assigned = true
		else:
			$score.text += " " + str(scores[i]) + "\n"
			$name.text += " " + str(names[i]) + "\n"
			i += 1

	if player_score_assigned == false:
		$score.text += " " + str(Globals.total_score) + "\n"
		$name.text += " " + str(Globals.player_name) + "\n"

func _on_Continue_pressed():
	get_tree().change_scene(next_scene)
