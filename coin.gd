extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		get_parent()._on_coin_collected()
		queue_free()
