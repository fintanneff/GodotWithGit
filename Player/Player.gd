extends KinematicBody2D

var graphic

func _ready():
	graphic = get_node("graphic")
	print(graphic.name)
