extends KinematicBody2D

var player_name = "Kuno"
var velocity = Vector2.ZERO
export (int,0,500,2) var speed = 300
onready var state_machine = $AnimationTree.get("parameters/playback")

func _ready():
	calculate_jump_values()

# main loop
func _physics_process(delta):
	
	platformer_movement(delta)


# behaviour functions
func platformer_movement(delta):
	# gravity
	velocity.y += get_gravity() * delta
	
	# movement
	velocity.x = (Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"))*speed
	
	# idle anim
	if is_on_floor():
		state_machine.travel("run")
		if velocity.x == 0:
			state_machine.travel("idle")
		
	
	# jump
	if Input.is_action_pressed("f_jump") and is_on_floor():
		calculate_jump_values()
		
		state_machine.travel("jump")
		jump()
	
	# move down a platform
	if Input.is_action_pressed("ui_down"):
		position.y += 1
	
	
	# fall anim
	if velocity.y > 10 and not is_on_floor():
		state_machine.travel("fall")
	
	# move and slide function
	velocity = move_and_slide(velocity, Vector2.UP, false, 4, 0.785398, false)
	

func jump():
	velocity.y = jump_velocity
	
func get_gravity() -> float:
	return jump_gravity if velocity.y < 0.0 else fall_gravity
	




# special jump adjustment variables
export (int,1,1000,2) var jump_height = 128
export (float,0.1,2) var jump_time_to_peak = 0.4
export (float,0.1,2) var jump_time_to_fall = 0.4

var jump_velocity:float
var jump_gravity:float
var fall_gravity:float

func calculate_jump_values():
	jump_velocity = ((2.0 * jump_height)/jump_time_to_peak) * -1.0
	jump_gravity= ((-2.0 * jump_height)/(jump_time_to_peak * jump_time_to_peak)) * -1.0
	fall_gravity= ((-2.0 * jump_height)/(jump_time_to_fall *jump_time_to_fall)) * -1.0
