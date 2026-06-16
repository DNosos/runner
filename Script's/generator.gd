extends Node2D

var spike = preload("res://preload/object.tscn")
var timer = 0

func _process(delta: float) -> void:
	timer += delta
	
	if timer >= 2:
		timer = 0
		
		var n_b = spike.instantiate()
		n_b.position = Vector2(40, -1)
		add_child(n_b)
