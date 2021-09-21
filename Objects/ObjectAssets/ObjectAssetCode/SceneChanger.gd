extends CanvasLayer

var processing = false

func _ready():
	pass

func change_scene(path,whiteout:bool=false):
	if whiteout:
		$ColorRect.modulate = Color(1,1,1)
	else:
		$ColorRect.modulate = Color(0,0,0)
	
	
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




