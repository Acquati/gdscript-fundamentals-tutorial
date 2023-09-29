extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	if is_visible():
		var random_number = GameFunction.random_number(0,30)
		var speed = GameFunction.global_speed()
		GameFunction.print_hi() # print hi
		print(speed) # print 10
		print(random_number) # print random float between 0 - 30
