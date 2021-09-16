extends Node


func _ready():
	VisualServer.set_default_clear_color(Color("#ede6c8"))

func _input(event):
	if event.is_action_pressed("f_fullscreen"):
		OS.window_fullscreen = !OS.window_fullscreen
		
		


