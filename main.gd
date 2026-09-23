extends Node2D

@onready var plate1 = $Plate1
@onready var plate2 = $Plate2
@onready var door = $Door
@onready var goal = $Goal
@onready var win_screen = $UI/WinScreen

var plate1_active = false
var plate2_active = false

func _ready() -> void:
	plate1.body_entered.connect(func(_b): plate1_active = true; check_door())
	plate1.body_exited.connect(func(_b): plate1_active = false; check_door())
	plate2.body_entered.connect(func(_b): plate2_active = true; check_door())
	plate2.body_exited.connect(func(_b): plate2_active = false; check_door())
	goal.body_entered.connect(func(_b): win_screen.visible = true)

func check_door() -> void:
	if plate1_active and plate2_active and is_instance_valid(door):
		door.queue_free()
