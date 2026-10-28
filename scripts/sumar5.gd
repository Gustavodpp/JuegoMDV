extends Sprite2D
@export var speed: float = 240.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("jugador preparado")
	
var puntos: int = 0 #dato

func _process(delta: float) -> void:
	if (Input.is_action_just_released("sumarPunto")):
		sumar_punto()
	
func sumar_punto() -> void: #funcion
	puntos += 1
	print(puntos)
	if puntos >= 5:     #decision
		print("Objetivo alcanzado")
