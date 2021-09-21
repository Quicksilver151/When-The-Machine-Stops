extends Node2D


func _ready():
	Global.spawn(self)
	

func _physics_process(delta):
	for body in $Exit.get_overlapping_bodies():
		if body.name == "Player" and Input.is_action_just_pressed("ui_accept") and !SceneChanger.processing:
			Global.spawn_pos = Vector2(896,512)
			SceneChanger.change_scene("res://Scenes/Levels/HallWay.tscn")
		



func _on_PrevLevel_body_entered(body):
	if body.name == "Player":
		Global.spawn_pos = Vector2(896,256)
		SceneChanger.change_scene("res://Scenes/Levels/Level1.tscn")
		
