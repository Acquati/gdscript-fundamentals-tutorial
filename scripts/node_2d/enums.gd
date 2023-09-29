extends Node2D

enum {NEUTRAL = 1, ENEMY, FRIENDLY}
enum FOOD {GOOD, BAD = -1}

# Called when the node enters the scene tree for the first time.
func _ready():
	if is_visible():
		print('Enum')
		print('NEUTRAL: ', NEUTRAL)
		print('ENEMY: ', ENEMY)
		print('FRIENDLY: ', FRIENDLY)
		print('FOOD: ', FOOD)
		print('FOOD.GOOD: ', FOOD.GOOD)
		print('FOOD.BAD: ', FOOD.BAD)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
