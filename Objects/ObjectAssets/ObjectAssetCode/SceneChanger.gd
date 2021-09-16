extends CanvasLayer

var processing = false

func _ready():
	pass

func change_scene(path):
	$AnimationPlayer.play("fade_out")
	processing = true
	var err
	
	yield($AnimationPlayer,"animation_finished")
	
	if path is String:
		err = get_tree().change_scene(path)
	elif path is PackedScene:
		err = get_tree().change_scene_to(path)
	else:
		err = ERR_INVALID_DATA
	
	$AnimationPlayer.play_backwards("fade_out")
	yield($AnimationPlayer,"animation_finished")
	processing = false
	
	return err




