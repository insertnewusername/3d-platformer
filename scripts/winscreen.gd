extends Node2D
@onready var click: AudioStreamPlayer2D = $click
var test = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	test = "hide"
	$Control/fadetransition.show()
	$Control/fadetransition/fade_timer.start()
	$Control/fadetransition/AnimationPlayer.play("fadein")



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	test = "home"
	click.play()
	$Control/fadetransition.show()
	$Control/fadetransition/fade_timer.start()
	$Control/fadetransition/AnimationPlayer.play("fadein")


func _on_fade_timer_timeout() -> void:
	if test == "hide":
		$Control/fadetransition.hide()
		$yippee.play()
	elif test =="home":
		Main.checkpoint_pos = Vector3(0.0, 0.492775, 0.0)
		get_tree().change_scene_to_file("res://scenes/levelselect.tscn")
		
