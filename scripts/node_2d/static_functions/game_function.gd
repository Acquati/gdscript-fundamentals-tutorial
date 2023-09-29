class_name GameFunction

static func print_hi():
	print('hi')
	# You can also call static functions inside.
	# print(global_speed())

# The following will fail:
# var b = 5
# static func print():
# 	print(b) # error

static func random_number(minimum, maximum):
	# Create a class object.
	var rng = RandomNumberGenerator.new()
	rng.randomize() # Numbers aren't random unless you call the randomize function.
	return rng.randf_range(minimum, maximum) # randf_range gets a random float between 2 values.

static func global_speed():
	return 10
