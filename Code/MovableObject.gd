tool
extends RigidBody2D

onready var frame = get_node_or_null("../../WorldCollisions/"+self.name)

export (Texture) var sprite

func _ready():
	$Sprite.texture = sprite
	


func _physics_process(delta):
	
	if frame != null:
		position = frame.global_position



