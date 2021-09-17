extends RigidBody2D
class_name Movable

var picked = false

func _ready():
	pass

func _integrate_forces(state):
	for body in $Area2D.get_overlapping_bodies():
		if body.name == "Player":
			if Input.is_action_just_pressed("f_select"):
				picked = !picked
				
			if picked:
				set_deferred("position",body.position)
				linear_velocity = Vector2.ZERO
	
	$CollisionShape2D.set_deferred("disabled",picked)
	




