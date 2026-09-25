extends Node2D

@onready var win_label = $UI/WinLabel

func _on_goal_body_entered(_body: Node2D) -> void:
	win_label.visible = true
