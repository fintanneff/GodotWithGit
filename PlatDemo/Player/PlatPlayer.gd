extends KinematicBody2D

onready var Spr = $Spr
var movevec = Vector2.ZERO

func _process(delta):
	#Move
	var inputx = Input.get_action_strength("ui_right")-Input.get_action_strength("ui_left")
	if (abs(inputx) > 0.5):
		movevec.x = inputx
		movevec.x *= 100
		Spr.global_scale = Vector2(sign(movevec.x), 1)
	else:
		movevec.x = 0

func _physics_process(delta):
	if (Input.is_action_just_pressed("ui_up")):
		print("up detected")
	#Grav
	if (is_on_floor()):
		movevec.y = 10
		if (Input.is_action_just_pressed("ui_up")):
			movevec.y = -200
			print("lol")
	else:
		movevec.y += 7
		if (Input.is_action_just_released("ui_up") && movevec.y < 0):
			movevec.y /= 3
	#ApplyMove
	movevec = move_and_slide(movevec, Vector2.UP, true)
