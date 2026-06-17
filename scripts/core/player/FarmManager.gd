extends Node

var plots = []

func _ready():
    print("FarmManager pronto para gerenciar o plantio!")

func add_plot(plot_node):
    plots.append(plot_node)

func harvest_all_ready():
    for plot in plots:
        if plot.is_ready():
            plot.harvest()
            # No futuro, adicionaremos a lógica de ganhar moedas aqui!

