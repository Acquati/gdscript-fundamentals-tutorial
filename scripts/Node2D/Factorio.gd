extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	if (is_visible()):
		# MaxPanelOutput kW
		var maxPanelOutput: float = 100
		# AccumulatorCapacity kJ
		var accumulatorCapacity: float = 1000 * 10
		# CycleDuration s
		var cycleDuration: float = 60 * 6.94
		# Efficiency
		var efficiency: float = 100
	
		var ratio: float = 0.168 * (maxPanelOutput / accumulatorCapacity) * cycleDuration * (efficiency / 100)
	
		print('Ratio: ', ratio)
		print(ratio, ' accumulators every 1 solar panels.')

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
