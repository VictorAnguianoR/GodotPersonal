extends CharacterBody2D

# Constantes
const GRAVITY = 800.0  # Velocidad de caída
const JUMP_FORCE = -400.0  # Fuerza de salto
const SPEED = 200.0  # Velocidad de movimiento

func _physics_process(delta: float) -> void:
	# Aplicar gravedad
	velocity.y += GRAVITY * delta

	# Movimiento horizontal
	if Input.is_action_pressed("ui_right"):  # Mover hacia la derecha
		velocity.x = SPEED
	elif Input.is_action_pressed("ui_left"):  # Mover hacia la izquierda
		velocity.x = -SPEED
	else:  # Detenerse si no hay entrada
		velocity.x = 0

	# Saltar
	if is_on_floor() and Input.is_action_just_pressed("ui_accept"):
		velocity.y = JUMP_FORCE

	# Aplicar el movimiento
	move_and_slide()
