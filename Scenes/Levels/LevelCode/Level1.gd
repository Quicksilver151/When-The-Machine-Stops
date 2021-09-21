extends Node2D


func _ready():
	Global.spawn(self)
	Overlay.play_track("stop")

func _physics_process(delta):
	
	for body in $Exit.get_overlapping_bodies():
		if body.name == "Player" and Input.is_action_just_pressed("ui_accept") and !SceneChanger.processing:
			Global.spawn_pos = Vector2(384,512)
			SceneChanger.change_scene("res://Scenes/Levels/HallWay.tscn")
			
	
	




func _on_Button_pressed():
	SceneChanger.change_scene("res://Scenes/Levels/ForbidenPalace.tscn")


func _on_NextLevel_body_entered(body):
	if body.name == "Player":
		SceneChanger.change_scene("res://Scenes/Levels/Level2.tscn")
