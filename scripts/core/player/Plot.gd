extends Node

var crop_name = ""
var planted = false

var plant_time = 0
var grow_time = 60

func plant(seed_name):
    crop_name = seed_name
    planted = true
    plant_time = Time.get_unix_time_from_system()

func is_ready():

    if not planted:
        return false

    var elapsed = Time.get_unix_time_from_system() - plant_time

    return elapsed >= grow_time

func harvest():

    if not is_ready():
        return false

    planted = false

    return true
