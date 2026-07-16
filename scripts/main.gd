extends Node3D

@onready var checkpoint_pos: Vector3 = Vector3(0.0, 0.492775, 0.0)


func _ready() -> void:
	print("checkpointpos:", Main.checkpoint_pos)
	if RenderingServer.get_current_rendering_method() == "gl_compatibility":
		# Reduce background and sun brightness when using the Compatibility renderer;
		# this tries to roughly match the appearance of Forward+.
		# This compensates for the different color space and light rendering for lights with shadows enabled.
		$Sun.light_energy = 0.24
		$Sun.shadow_opacity = 0.85
		$Environment.environment.background_energy_multiplier = 0.25


func _on_checkpoint_1_body_entered(body: Node3D) -> void:
	if body.name == "Player":
		Main.checkpoint_pos = Vector3(-17.82843, 2.570076, 0.394019)
		print("checkpoint changed to", Main.checkpoint_pos)


func _on_checkpoint_2_body_entered(body: Node3D) -> void:
	if body.name == "Player":
		Main.checkpoint_pos = Vector3(-40.27348, 3.202805, -15.12877)
		print("checkpoint changed to", Main.checkpoint_pos)


func _on_checkpoint_3_body_entered(body: Node3D) -> void:
	if body.name == "Player":
		Main.checkpoint_pos = Vector3(-5.817183, 6.203927, -22.34969)

		print("checkpoint changed to", Main.checkpoint_pos)


func _on_checkpoint_4_body_entered(body: Node3D) -> void:
	if body.name == "Player":
		Main.checkpoint_pos = Vector3(7.395652, 10.01446, -7.101365)

		print("checkpoint changed to", Main.checkpoint_pos)
