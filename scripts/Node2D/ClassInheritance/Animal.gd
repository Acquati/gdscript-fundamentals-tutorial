class_name Animal

# Member Variable
var Food: String: set = setFood, get = getFood

func _init(food: String = 'something'):
	Food = food

func eat():
	print('Eating ' + getFood() + '.')

func setFood(food: String) -> void:
	Food = food

func getFood() -> String:
	return Food
