extends Sprite2D
@export var speed: float = 200.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	print(position.x, " ", position.y)
	
	position.x == 0 and position.y == 0
	
	if position.x == 0 and position.y == 0:
		position.x += 1 * speed * delta
	
	if position.x >= 250:
		position.x = 250
		position.y += 1 * speed * delta
		
	if position.y >= 250:
		position.y = 250
		position.x += -2 * speed * delta
		
	if position.x <= 0:
		position.x = 0
		position.y += -2 * speed * delta
		
	if position.y == 0:
		position.y = 0
		position.x += 2 * speed * delta
		
		if position.y <= 0:
			position.y = 0
