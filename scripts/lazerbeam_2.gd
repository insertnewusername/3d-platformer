extends StaticBody3D

var speed := 2.0        # how fast it moves
var amplitude := 1.0    # how far up/down it moves
var base_y := 0.0       # starting height

func _ready():
	base_y = global_transform.origin.y

func _process(delta):
	var t = Time.get_ticks_msec() / 1000.0
	var new_y = base_y + sin(t * speed) * amplitude * -1
	global_transform.origin.y = new_y
