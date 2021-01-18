extends KinematicBody2D

export(float) var movespeed = 0
var movevec = Vector2.ZERO

func _process(delta):
	movevec.x = Input.get_action_strength("ui_right")-Input.get_action_strength("ui_left")
	movevec.y = Input.get_action_strength("ui_down")-Input.get_action_strength("ui_up")
	move_and_collide(movevec * delta * movespeed)
