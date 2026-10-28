# 30/09/2026
PRUEBA 

# 25/09/2026

El Botón (en la escena del Jugador)
El nodo Button emite la señal pressed cada vez que el jugador hace clic en él. El script asignado al Sprite2D recibe directamente esta señal y ejecuta la orden de pausar o reanudar su propio movimiento y rotación.

El RoundTimer (en la escena Main)
El nodo RoundTimer emite la señal timeout de manera automática en el momento en que se agotan los 10 segundos de juego. El script principal de main.gd recibe esta señal y responde ordenando la desactivación completa del proceso de la instancia del Player.

La arquitectura del juego
El script del Sprite2D se encarga de manera independiente de todo lo referente a la física y al control local del personaje. Por su parte, el script de Main actúa como coordinador global, controlando el flujo del tiempo y asegurándose de congelar al jugador cuando la ronda termina.
