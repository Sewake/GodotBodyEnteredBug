extends RigidBody2D

var SPEED = 400
var target_velocity = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	target_velocity = Vector2.ZERO
	if Input.is_action_pressed("e_down"):
		target_velocity.y += 1
	if Input.is_action_pressed("e_up"):
		target_velocity.y -= 1
	if Input.is_action_pressed("e_right"):
		target_velocity.x += 1
	if Input.is_action_pressed("e_left"):
		target_velocity.x -= 1

	target_velocity = target_velocity.normalized() * SPEED


func _integrate_forces(state):
	set_linear_velocity(target_velocity)
