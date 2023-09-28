extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	if (is_visible()):
		var randomNumber = GameFunction.randomNumber(0,30)
		var speed = GameFunction.globalSpeed()
		GameFunction.printHi() # print hi
		print(speed) # print 10
		print(randomNumber) # print random float between 0 - 30
