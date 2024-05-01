extends RigidBody2D

var SPEED = 400

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("e_down"):
		velocity.y += 1
	if Input.is_action_pressed("e_up"):
		velocity.y -= 1
	if Input.is_action_pressed("e_right"):
		velocity.x += 1
	if Input.is_action_pressed("e_left"):
		velocity.x -= 1
	
	position += velocity * SPEED * delta


func _on_body_entered(body):
	print("Body entered (enemy): ", body)


func _on_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	print("Body shape entered (enemy): ", body)
