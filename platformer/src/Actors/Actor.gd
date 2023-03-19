extends CharacterBody2D
class_name Actor

@export var move_speed : float = 300 

func _physics_process(delta):
	var input_direction = Vector2( Input.get_action_strength("right")  - Input.get_action_strength("left"), Input.get_action_strength("down")  - Input.get_action_strength("up")	) 
	#update velocity
	velocity = input_direction * move_speed; 
	
	move_and_slide()
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
