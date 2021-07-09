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

var main_menu_music = preload("res://Sounds/mixkit-marimba-ringtone-1359.wav")
var credits_music = preload("res://Sounds/mixkit-orchestral-christmas-happy-music-2987.wav")
var level1_music = preload("res://Sounds/mixkit-light-rain-loop-2393.wav")

var button_sfx = preload("res://Sounds/mixkit-electronic-lock-success-beeps-2852.wav")
var vaccine_collected_sfx = preload("res://Sounds/mixkit-arcade-game-jump-coin-216.wav")
var timer_countdown_sfx = preload("res://Sounds/mixkit-tick-tock-clock-timer-1045.wav")
var opening_sfx = preload("res://Sounds/mixkit-arcade-bonus-alert-767.wav")
var ranking_sfx = preload("res://Sounds/mixkit-unlock-game-notification-253.wav")
var player_footsteps_sfx = preload("res://Sounds/mixkit_footsteps.wav")
var player_scan_sfx = null
var player_throw_sfx = null
