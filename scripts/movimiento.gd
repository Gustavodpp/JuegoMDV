extends Sprite2D
@export var speed: float = 500.0

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	var hor:= Input.get_axis("move_left", "move_right")
	var ver:= Input.get_axis("move_up", "move_down")
	position.x += hor * speed * delta
	position.y += ver * speed * delta
	
func mover() -> void:
	pass
