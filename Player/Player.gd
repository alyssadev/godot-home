extends KinematicBody2D

const SPEED = 80

var velocity = Vector2.ZERO
var res = Vector2(ProjectSettings.get_setting("display/window/size/width"),ProjectSettings.get_setting("display/window/size/height"))

func _physics_process(_delta):
	# screen wrapping?
	print(self.position.x, " ", self.position.y)
	if self.position.x < 0 or \
	   self.position.y < 0:
		self.position.x += res.x
		self.position.y += res.y
	if self.position.x >= res.x or \
	   self.position.y >= res.y:
		self.position.x = int(self.position.x) % int(res.x)
		self.position.y = int(self.position.y) % int(res.y)

	if Input.is_action_pressed("ui_right"):
		velocity.x = 2
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -2
	else:
		velocity.x = 0
	if Input.is_action_pressed("ui_up"):
		velocity.y = -2
	elif Input.is_action_pressed("ui_down"):
		velocity.y = 2
	else:
		velocity.y = 0
	
	velocity = velocity.normalized() * SPEED

	move_and_slide(velocity)
