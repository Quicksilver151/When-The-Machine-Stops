extends Node2D


func _ready():
	Overlay.play_track("stop")






func _on_Button_pressed():
	SceneChanger.change_scene("res://Scenes/Levels/ForbidenPalace.tscn")
