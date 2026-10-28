extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$RoundTimer.start()
	$Player.interact_requested.connect(_on_player_interact_requested)

func _on_player_interact_requested() -> void:
	print("Interacción recibida")
	# Aquí pondrás la lógica de puntuación o aciertos en el tema 2.3

# Esta función se conecta al temporizador "RoundTimer" (timeout)
func _on_round_timer_timeout() -> void:
	# Detenemos los procesos de movimiento y entrada del jugador al acabar el tiempo[cite: 16]
	$Player.set_process(false)
	$Player.set_process_unhandled_input(false)
	print("Fin de la ronda")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
