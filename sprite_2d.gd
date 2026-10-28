extends Node2D

var speed = 400
var angular_speed = PI

# Called when the node enters the scene tree for the first time.

func _ready():
	var timer = get_node("Timer")
	timer.timeout.connect(_on_timer_timeout)


func _process(delta):
	rotation += angular_speed * delta
	var velocity = Vector2.UP.rotated(rotation) * speed
	position += velocity * delta


func _on_button_pressed():
	set_process(not is_processing())


func _on_timer_timeout():
	visible = not visible

signal interact_requested

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("interact"):
		interact_requested.emit()
