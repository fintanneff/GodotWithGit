extends KinematicBody2D

var graphic

func _ready():
	graphic = get_node("pootis")
	print(graphic.name)
