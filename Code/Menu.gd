extends Control


func _ready():
	OS.center_window()
	
	Overlay.play_track("main")
	


func _on_Play_pressed():
	SceneChanger.change_scene("res://Scenes/Levels/Level1.tscn")


func _on_Settings_pressed():
	SceneChanger.change_scene("res://Scenes/Info.tscn")


func _on_Exit_pressed():
	get_tree().quit()


