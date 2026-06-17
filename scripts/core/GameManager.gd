extends Node

var player_data

func _ready():
    SaveManager.load_game()

func new_game():
    player_data = {
        "coins": 1000,
        "nexus_coins": 0,
        "farm_level": 1
    }

func save():
    SaveManager.save_game(player_data)
