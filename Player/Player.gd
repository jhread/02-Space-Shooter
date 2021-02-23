extends KinematicBody2D

export var speed = 7

func _ready():
	pass

# MOVEMENT
func _physics_process(delta):
	position += get_input()*speed

func get_input():
	var input_dir = Vector2(0,0) 
	if Input.is_action_pressed("up"):
		input_dir.y -= 1
	if Input.is_action_pressed("down"):
		input_dir.y += 1
	if Input.is_action_pressed("left"):
		input_dir.x -= 1
	if Input.is_action_pressed("right"):
		input_dir.x += 1
	return input_dir.rotated(rotation)

# BULLETS
#func _fire(_delta):
#	if Input.is_action_just_pressed("fire"):
#		var bullet = Bullet.instance()
#		bullet.position = position
#		Bullets.add_child(bullet)
