class_name Animal

# Member Variable
var food: String: set = set_food, get = get_food

func _init(value: String = 'something'):
	food = value

func eat() -> void:
	print('Eating ' + get_food() + '.')

func set_food(value: String) -> void:
	food = value

func get_food() -> String:
	return food
