extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	if is_visible():
		# Create an instanced object.
		var enemies: Array = []
		enemies.push_front(Enemy.new())
		enemies.push_front(Enemy.new('Jean Grey'))
		
		enemies.front().simple_function() # print Enemy
		enemies.front().simple_function() # print Jean Grey
		
		var EnemyInstance = load("res://scripts/node_2d/classes/enemy.gd")
		enemies.push_front(EnemyInstance.new())
		
		# Edit our Instanced Object
		enemies.front().name = 'Jeremy'
		enemies.front().simple_function() # print Jeremy

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
