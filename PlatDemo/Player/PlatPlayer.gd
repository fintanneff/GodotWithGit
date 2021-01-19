extends KinematicBody2D

onready var Spr = $Spr
var yvel = 0

func _physics_process(delta):
	#Grav
	if (is_on_floor()):
		yvel = 2
	else:
		yvel += 1
	move_and_slide(Vector2.DOWN*yvel, Vector2.UP, true)
