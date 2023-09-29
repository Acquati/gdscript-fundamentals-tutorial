extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	if is_visible():
		var is_player_smiling: bool = false
		var is_player_running: bool = false
		var is_player_happy: bool = false
		var is_player_alive: bool = true
		
		match [is_player_smiling, is_player_running, is_player_happy, is_player_alive]:
			[true,true,true,true]:
				print("We are happy, running, smiling, and we can keep playing!")
			[false,false,false,false]:
				print("We are not happy, running, smiling, and we can't keep playing!")
			_:
				print("Unhandled error.")
		
		is_player_smiling = true
		is_player_running = true
		is_player_happy = true
		is_player_alive = true
		
		match [is_player_smiling, is_player_running, is_player_happy, is_player_alive]:
			[true,true,true,true]:
				print("We are happy, running, smiling, and we can keep playing!")
			[false,false,false,false]:
				print("We are not happy, running, smiling, and we can't keep playing!")
			_:
				print("Unhandled error.")
		
		is_player_smiling = false
		is_player_running = false
		is_player_happy = false
		is_player_alive = false
		
		match [is_player_smiling, is_player_running, is_player_happy, is_player_alive]:
			[true,true,true,true]:
				print("We are happy, running, smiling, and we can keep playing!")
			[false,false,false,false]:
				print("We are not happy, running, smiling, and we can't keep playing!")
			_:
				print("Unhandled error.")
