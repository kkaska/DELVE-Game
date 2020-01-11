extends Control

func _ready():
	# Center the windows in the screen
	OS.window_position = (OS.get_screen_size()*0.5 - OS.window_size*0.5)

func _on_Button_Exit_pressed():
	# Exit
	get_tree().quit()

func _on_Button_Settings_pressed():
	# Open Settings Menu
	get_node("Settings_Control").show()

func _on_Button_Start_pressed():
	# Load the game scene
	get_tree().change_scene("res://Scenes/Game.tscn")
