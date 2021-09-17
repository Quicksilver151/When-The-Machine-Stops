tool
extends RigidBody2D

onready var frame = get_node_or_null("../../WorldCollisions/"+self.name)


export (Texture) var sprite
export (bool) var flipped_sprite = false

func _ready():
	$Sprite.texture = sprite
	$Sprite.flip_h = flipped_sprite


func _physics_process(delta):
	
	if frame != null:
		position = frame.global_position



