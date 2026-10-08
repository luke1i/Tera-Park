extends Node2D

var coins = 0

func _on_coin_collected():
	coins += 1
	$UI/CoinLabel.text = "Coins: %d" % coins

func _on_goal_reached():
	$UI/WinLabel.visible = true
