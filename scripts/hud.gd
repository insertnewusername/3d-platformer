extends Control

func _ready():
	$Coins.text = "/15"

func _on_coin_collected(coins):
	
	$Coins.text = str(coins) + "/15"
