extends Node

var crop_prices = {

    "wheat": 15,
    "corn": 25,
    "carrot": 18
}

func sell_crop(crop_name, amount):

    if not crop_prices.has(crop_name):
        return 0

    return crop_prices[crop_name] * amount
