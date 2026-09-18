extends Node3D
@onready var canvas_layer: CanvasLayer = $"../CanvasLayer"
@onready var fadetransition: ColorRect = $"../CanvasLayer/fadetransition"
@onready var fade_timer: Timer = $"../CanvasLayer/fadetransition/fade_timer"
@onready var animation: AnimationPlayer = $"../CanvasLayer/fadetransition/AnimationPlayer"
@onready var bgmusic: AudioStreamPlayer2D = $"../bgmusic"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	fadetransition.show()
	fade_timer.start()
	animation.play("fadein")
	bgmusic.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_fade_timer_timeout() -> void:
	fadetransition.hide()


func _on_bgmusic_finished() -> void:
	bgmusic.play()
