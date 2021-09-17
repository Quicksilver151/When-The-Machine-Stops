extends Node2D

var player = preload("res://Objects/Player.tscn")

func _ready():
	var player_instance = player.instance()
	add_child(player_instance)
	player_instance.position = $Spawn.position


func _physics_process(delta):
	for door in $Doors.get_children():
		for body in door.get_overlapping_bodies():
			if body.name == "Player" and Input.is_action_just_pressed("ui_accept") and !SceneChanger.processing:
				SceneChanger.change_scene("res://Scenes/Levels/Level%s.tscn"%[door.name.trim_prefix("Door")])
	
	
