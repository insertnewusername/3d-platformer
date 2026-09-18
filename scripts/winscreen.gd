extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Control/fadetransition.show()
	$Control/fadetransition/fade_timer.start()
	$Control/fadetransition/AnimationPlayer.play("fadein")



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	Main.checkpoint_pos = Vector3(0.0, 0.492775, 0.0)
	get_tree().change_scene_to_file("res://scenes/levelselect.tscn")
		


func _on_fade_timer_timeout() -> void:
	$Control/fadetransition.hide()
	$yippee.play()
