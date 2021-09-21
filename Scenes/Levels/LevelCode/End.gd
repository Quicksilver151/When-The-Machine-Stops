extends MarginContainer

export(int) var dummy = 1

var value:float = -20

func _ready():
	pass

func _physics_process(delta):
	value += 0.1
	
	if value > 0 and value < 200:
		if $RTL.bbcode_text != "[shake rate=16 level="+str(floor(value))+"][center]You have successffulllly essscacap pe dddkj kid123 42 13 r2 2 ^!*^ !%$ #!@@  #! $%^&*@@  !!$":
			$RTL.bbcode_text = "[shake rate=16 level="+str(floor(value))+"][center]You have successffulllly essscacap pe dddkj kid123 42 13 r2 2 ^!*^ !%$ #!@@  #! $%^&*@@  !!$"
	
	
	if value > 250:
		get_tree().change_scene("res://Scenes/Menu.tscn")
	
	


