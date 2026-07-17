extends Node3D
@onready var platform: StaticBody3D = $"platform-medium2#StaticBody3D"
var movement_offset: Vector3 = Vector3(10, 0, 0)
var time: float = 3.0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	moveplatform()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
func moveplatform() -> void:
	var tween = create_tween().set_process_mode(Tween.TWEEN_PROCESS_PHYSICS)
	
	tween.set_loops()
	
	tween.set_parallel(false)
	
	tween.tween_property(platform, "position", movement_offset, time)\
		.set_trans(Tween.TRANS_SINE)\
		.set_ease(Tween.EASE_IN_OUT)
		
	tween.tween_property(platform, "position", Vector3.ZERO, time)\
		.set_trans(Tween.TRANS_SINE)\
		.set_ease(Tween.EASE_IN_OUT)
