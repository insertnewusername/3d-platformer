extends Node3D

var checkpoint_pos: Vector3 = Vector3(0.0, 0.492775, 0.0)


func _ready() -> void:
	if RenderingServer.get_current_rendering_method() == "gl_compatibility":
		# Reduce background and sun brightness when using the Compatibility renderer;
		# this tries to roughly match the appearance of Forward+.
		# This compensates for the different color space and light rendering for lights with shadows enabled.
		$Sun.light_energy = 0.24
		$Sun.shadow_opacity = 0.85
		$Environment.environment.background_energy_multiplier = 0.25


func _on_checkpoint_1_body_entered(body: Node3D) -> void:
	checkpoint_pos = Vector3(-17.23919, 2.960511, 1.608208)
	print(checkpoint_pos)
