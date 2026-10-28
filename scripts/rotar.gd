extends Sprite2D
@export var speed: float = 300.0
var angular_speed = PI

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	rotation += angular_speed * delta;
	
	var velocity = Vector2.UP.rotated(rotation) * speed
	
	position += velocity * delta
