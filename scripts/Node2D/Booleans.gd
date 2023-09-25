extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	if (is_visible()):
		var isPlayerSmiling: bool = false
		var isPlayerRunning: bool = false
		var isPlayerHappy: bool = false
		var isPlayerAlive: bool = true
		
		match [isPlayerSmiling, isPlayerRunning, isPlayerHappy, isPlayerAlive]:
			[true,true,true,true]:
				print("We are happy, running, smiling, and we can keep playing!")
			[false,false,false,false]:
				print("We are not happy, running, smiling, and we can't keep playing!")
			_:
				print("Unhandled error.")
		
		isPlayerSmiling = true
		isPlayerRunning = true
		isPlayerHappy = true
		isPlayerAlive = true
		
		match [isPlayerSmiling, isPlayerRunning, isPlayerHappy, isPlayerAlive]:
			[true,true,true,true]:
				print("We are happy, running, smiling, and we can keep playing!")
			[false,false,false,false]:
				print("We are not happy, running, smiling, and we can't keep playing!")
			_:
				print("Unhandled error.")
		
		isPlayerSmiling = false
		isPlayerRunning = false
		isPlayerHappy = false
		isPlayerAlive = false
		
		match [isPlayerSmiling, isPlayerRunning, isPlayerHappy, isPlayerAlive]:
			[true,true,true,true]:
				print("We are happy, running, smiling, and we can keep playing!")
			[false,false,false,false]:
				print("We are not happy, running, smiling, and we can't keep playing!")
			_:
				print("Unhandled error.")
