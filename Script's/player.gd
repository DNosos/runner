extends CharacterBody2D

var vidas = 5
var pontos = 0

var velocidade_pulo = -600
func _physics_process(delta: float) -> void:
	velocity += get_gravity()*delta
	
	if is_on_floor():
		$Sprite.play("defalt")
		if Input.is_action_pressed("ui_select"):
			velocity.y = velocidade_pulo
	else:
		$Sprite.play("jump")
	move_and_slide()
	
	if vidas <= 0:
		get_tree().reload_current_scene()
