extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	if is_visible():
		var dictionary_sample = {'cake': 'chocolate', 'laudo': 'naldo'}
		print(dictionary_sample)
		print(dictionary_sample['cake'])
		
		var dictionary_container_1 = {}
		dictionary_container_1 = { new_key_1 = 100 }
		dictionary_container_1['new_key_2'] = 200
		dictionary_container_1.new_key_3 = 300
		print(dictionary_container_1)
		print(dictionary_container_1.new_key_1)
		
		for item in dictionary_container_1:
			print(dictionary_container_1[item])
		
		var dictionary_container_2 = { 'new_key_1' = 100, 'new_key_2' = 200, 'new_key_3' = 300 }
		
		print(dictionary_container_1 == dictionary_container_2)
		print(dictionary_container_1.hash() == dictionary_container_2.hash())
		print(dictionary_container_1.hash())
		dictionary_container_1.clear()
		print(dictionary_container_1)
		dictionary_container_2.erase('new_key_1')
		print(dictionary_container_2)
		
		# Create empty dictionary.
		var empty_dict = {}

		# Create dictionary, int and string allowed for keys.
		var _dictionary = {
			1: "Hi",
			"key": "World"
		}
		
		# Add a key to dictionary.
		# Square brackets offer greater name control.
		empty_dict["key"] = "value"
		# You can use literals such as ints, floats, and booleans.
		empty_dict[4] = [1,2,3,4]
		# Dot notation is an easy way if you want to default to key strings.
		empty_dict.some_key = "someValue"
		
		# Get a value from an existing dictionary.
		# Returns an array [1,2,3,4].
		var get_value = empty_dict[4]
		# Returns  string "value".
		var get_another_value = empty_dict["key"]
		
		# Print to see what the dictionary values are.
		print("get_value: ", get_value)
		print("get_another_value: ", get_another_value)		
		
		# Create dictionaries for nested dictionary example.
		# Assigns an Array to a key string called "key".
		var dict_1 = {"key": [1, 2, 3, 4]}
		# Assigns an Array to a key string called "key".
		var dict_2 = {"key": [1, 2, 3, 4]}
		# Assigns a dictionary to a key string called "key".
		var dict_3 = {"key": dict_2}
		# dict_3["key"]["key"] # this is how to access a nested dictionary.
		
		# See whats inside our nested dictionary.
		print('dict_3["key"]["key"]', dict_3["key"]["key"])
		
		# Compare dictionaries throguh hashes
		# Dict1.hash() == dict_2.hash()
		print('dict_1 == dict_2', dict_1 == dict_2) # print true
		print('dict_1.hash() == dict_2.hash()', dict_1.hash() == dict_2.hash()) # print true
		
		# Clear an entire dictionary.
		dict_1.clear()
		
		# Remove a specific key from a dictionary.
		dict_3.erase("key")
