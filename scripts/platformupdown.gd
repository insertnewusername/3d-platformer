extends Node3D

var speed := 2.0
var amplitude := 8.0  
var going_up := true

var top_y := 0.0
var bottom_y := 0.0

func _ready():
	# Set movement range based on starting position
	bottom_y = global_position.y
	top_y = bottom_y + amplitude

func _process(delta):
	var pos := global_position

	if going_up:
		pos.y += speed * delta
		if pos.y >= top_y:
			going_up = false
	else:
		pos.y -= speed * delta
		if pos.y <= bottom_y:
			going_up = true

	global_position = pos
