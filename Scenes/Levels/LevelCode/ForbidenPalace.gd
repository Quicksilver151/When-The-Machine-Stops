extends MarginContainer


func _ready():
	OS.window_size = Vector2(1024,600)


func _on_Button_pressed():
	SceneChanger.change_scene("res://Scenes/Menu.tscn")
	OS.window_size = Vector2(1024,600)
	
