extends Area2D

const JUMP_BOOST = -600.0  # Fuerza del trampolín

# Referencia al nodo AnimatedSprite2D
@onready var sprite = $AnimatedSprite2D

func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		# Cambiar la animación al estado "Activado"
		sprite.animation = "Activado"
		# Aplicar el impulso de rebote
		body.velocity.y = JUMP_BOOST
		# Volver a la animación Idle después de un tiempo
		await get_tree().create_timer(0.3).timeout
		sprite.animation = "Idle"
