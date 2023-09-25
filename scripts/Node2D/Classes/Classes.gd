extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	if (is_visible()):
		# Create an instanced object
		var enemies: Array = []
		enemies.push_front(Enemy.new())
		enemies.push_front(Enemy.new('Jean Grey'))
		
		enemies.front().simpleFunction() # print Enemy
		enemies.front().simpleFunction() # print Jean Grey
		
		var loadClass = load("res://scripts/Node2D/Classes/Enemy.gd")
		enemies.push_front(loadClass.new())
		
		# Edit our Instanced Object
		enemies.front().Name = 'Jeremy'
		enemies.front().simpleFunction() # print Jeremy

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
