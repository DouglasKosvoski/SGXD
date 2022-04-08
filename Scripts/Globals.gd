extends Node

var time_start
var time_session_started
var lvl1_time_conclusion
var lvl2_time_conclusion
var lvl3_time_conclusion
var time_session_ended

const lvl1_qtd_vaccines = 13
const lvl2_qtd_vaccines = 7
const lvl3_qtd_vaccines = 5

var lvl1_collected_vaccines = []
var lvl2_collected_vaccines = []
var lvl3_collected_vaccines = []


var total_scans = 0
var scans_avaiables = 7

var lvl2_throws = 0
var lvl3_throws = 0

var total_score = 0
var current_level = 0
var player_name = "Você"

const form_link = "https://forms.gle/pnfmTdEkAv2ZZthv6"

func _ready():
	time_session_started = OS.get_time()
	time_start = OS.get_unix_time()
	
	for i in range(lvl1_qtd_vaccines):
		lvl1_collected_vaccines.append(0)
	for i in range(lvl2_qtd_vaccines):
		lvl2_collected_vaccines.append(0)
	for i in range(lvl3_qtd_vaccines):
		lvl3_collected_vaccines.append(0)
