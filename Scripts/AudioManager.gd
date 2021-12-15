extends Node

# define volume_db range
const MIN_VOLUME_LEVEL = -80
const MAX_VOLUME_LEVEL = +20

# Toggle sound/audio on and off
var sound_on = true
var audio_on = true

# Value controlled by the horizontal slider on options_menu
var sound_volume = 0 # music related
var audio_volume = 0 # sfx related

var main_menu_music = preload("res://Sounds/Main_Menu.wav")
var credits_music = preload("res://Sounds/Credits.wav")
var level1_music = preload("res://Sounds/Level_1_Background.wav")
var level2_music = preload("res://Sounds/Level_2_Background.wav")
var level3_music = preload("res://Sounds/Level_3_Background.wav")
var ending_music = preload("res://Sounds/Ending.wav")

var button_sfx = preload("res://Sounds/Button_Pressed.wav")
var vaccine_collected_sfx = preload("res://Sounds/Collect.wav")
var timer_countdown_sfx = preload("res://Sounds/Timer.wav")
var opening_sfx = preload("res://Sounds/Startup.wav")
var ranking_sfx = preload("res://Sounds/Notification.wav")

#var player_scan_sfx = null
#var player_throw_sfx = null
