extends Node3D
@onready var collision_shape_3d: CollisionShape3D = $Area3D/CollisionShape3D
@onready var start_position: Vector3 = position
@onready var collisionshape: CollisionShape3D = $"platform-falling2#StaticBody3D/platform-falling2_StaticBody3D#CollisionShape3D"

var falling := false
var fall_velocity := 0.0

func _physics_process(delta):
	scale = scale.lerp(Vector3(1, 1, 1), delta * 10) # Animate scale
	
	if falling:
		fall_velocity += 15.0 * delta
		position.y -= fall_velocity * delta
	else:
		fall_velocity = 0.0
	
	if position.y < -10:
		falling = false
		visible = false # Remove platform if below threshold
		collision_shape_3d.set_deferred("disabled", true)
		collisionshape.set_deferred("disabled", true)
func _on_body_entered(_body):
	if !falling:
		Audio.play("res://sounds/fall.ogg") # Play sound
		scale = Vector3(1.25, 1, 1.25) # Animate scale
		
	falling = true
	
func reset_platform():
	position = start_position
	fall_velocity = 0.0
	falling = false
	visible = true
	collision_shape_3d.disabled = false
	collisionshape.disabled = false
