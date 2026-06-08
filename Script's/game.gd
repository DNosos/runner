extends Node2D

@export var velocidade: int
func _ready() -> void:
	velocidade = 400

func _process(delta: float) -> void:
	$"Found-1".position.x -= velocidade*delta*0.05
	$"Found-2".position.x -= velocidade*delta*0.05
	if $"Found-1".position.x < -1152:
		$"Found-1".position.x = 1152
	if $"Found-2".position.x < -1152:
		$"Found-2".position.x = 1152
		
	$"Floor-1".position.x -= velocidade*delta*2
	$"Floor-2".position.x -= velocidade*delta*2
	if $"Floor-1".position.x < -1152:
		$"Floor-1".position.x = 1152
	if $"Floor-2".position.x < -1152:
		$"Floor-2".position.x = 1152
	
	$"Mid-Blue-1".position.x -= velocidade*delta*0.1
	$"Mid-Blue-2".position.x -= velocidade*delta*0.1
	$"Mid-Black-1".position.x -= velocidade*delta*0.2
	$"Mid-Black-2".position.x -= velocidade*delta*0.2
	if $"Mid-Blue-1".position.x < -1152:
		$"Mid-Blue-1".position.x = 1152
	if $"Mid-Blue-2".position.x < -1152:
		$"Mid-Blue-2".position.x = 1152
	if $"Mid-Black-1".position.x < -1152:
		$"Mid-Black-1".position.x = 1152
	if $"Mid-Black-2".position.x < -1152:
		$"Mid-Black-2".position.x = 1152
