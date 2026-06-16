extends Area2D

@export var velocidade: int
func _ready() -> void:
	velocidade = 200

func _process(delta: float) -> void:
	$".".position.x -= velocidade*delta*1
	if $".".position.x < -1152:
		$".".queue_free()

func _on_body_entered(body: Node2D) -> void:
	body.vidas -= 1
	queue_free()
