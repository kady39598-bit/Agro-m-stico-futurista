extends Node

var admin_email = "kady.39598@gmail.com"

func is_admin(email):

    return email.to_lower() == admin_email.to_lower()
