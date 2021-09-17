extends Node2D

var player = preload("res://Objects/Player.tscn")

func _ready():
	Global.spawn(self)
	


func _physics_process(delta):
	for door in $Doors.get_children():
		for body in door.get_overlapping_bodies():
			if body.name == "Player" and Input.is_action_just_pressed("ui_accept") and !SceneChanger.processing:
				Global.spawn_pos = Vector2(512,522)
				SceneChanger.change_scene("res://Scenes/Levels/Level%s.tscn"%[door.name.trim_prefix("Door")])
	


func _on_End_body_entered(body):
	if body.name == "Player":
		SceneChanger.change_scene("res://Scenes/Levels/End.tscn",true)
		


func _on_Vent_body_entered(body):
	if body.name == "Player":
		Global.spawn_pos = Vector2(512,192)
		SceneChanger.change_scene("res://Scenes/Levels/Level3.tscn")
		
