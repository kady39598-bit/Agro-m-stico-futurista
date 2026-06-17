extends Node

const SAVE_PATH = "user://savegame.save"

func save_game(data):
    var file = FileAccess.open(SAVE_PATH, FileAccess.WRITE)

    if file:
        file.store_var(data)
        file.close()

func load_game():
    if not FileAccess.file_exists(SAVE_PATH):
        return null

    var file = FileAccess.open(SAVE_PATH, FileAccess.READ)

    if file:
        var data = file.get_var()
        file.close()
        return data

    return null
