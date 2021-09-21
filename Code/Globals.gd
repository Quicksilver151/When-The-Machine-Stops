extends Node

var spawn_pos = Vector2.ZERO

var player = preload("res://Objects/Player.tscn")

func _ready():
	VisualServer.set_default_clear_color(Color("#ede6c8"))

func _input(event):
	if event.is_action_pressed("f_fullscreen"):
		OS.window_fullscreen = !OS.window_fullscreen
		

func spawn(node):
	if node.get_node_or_null("Player") == null:
		node.add_child(player.instance())
	
	if spawn_pos:
		
		node.get_node("Player").position = spawn_pos
		spawn_pos = Vector2.ZERO
	


