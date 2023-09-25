extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	if (is_visible()):
		var dictionarySample = {'cake': 'chocolate', 'laudo': 'naldo'}
		print(dictionarySample)
		print(dictionarySample['cake'])
		
		var dictionaryContainer1 = {}
		dictionaryContainer1 = { newKey1 = 100 }
		dictionaryContainer1['newKey2'] = 200
		dictionaryContainer1.newKey3 = 300
		print(dictionaryContainer1)
		print(dictionaryContainer1.newKey1)
		
		for item in dictionaryContainer1:
			print(dictionaryContainer1[item])
		
		var dictionaryContainer2 = { 'newKey1' = 100, 'newKey2' = 200, 'newKey3' = 300 }
		
		print(dictionaryContainer1 == dictionaryContainer2)
		print(dictionaryContainer1.hash() == dictionaryContainer2.hash())
		print(dictionaryContainer1.hash())
		dictionaryContainer1.clear()
		print(dictionaryContainer1)
		dictionaryContainer2.erase('newKey1')
		print(dictionaryContainer2)
		
		# Create empty dictionary.
		var emptyDict = {}

		# Create dictionary, int and string allowed for keys.
		var dictionary = {
			1: "Hi",
			"key": "World"
		}
		
		# Add a key to dictionary.
		# Square brackets offer greater name control.
		emptyDict["key"] = "value"
		# You can use literals such as ints, floats, and booleans.
		emptyDict[4] = [1,2,3,4]
		# Dot notation is an easy way if you want to default to key strings.
		emptyDict.someKey = "someValue"
		
		# Get a value from an existing dictionary.
		# Returns an array [1,2,3,4].
		var getValue = emptyDict[4]
		# Returns  string "value".
		var getAnotherValue = emptyDict["key"]
		
		# Print to see what the dictionary values are.
		print("getValue: ", getValue)
		print("getAnotherValue: ", getAnotherValue)
		
		
		# Create dictionaries for nested dictionary example.
		# Assigns an Array to a key string called "key".
		var dict1 = {"key": [1, 2, 3, 4]}
		# Assigns an Array to a key string called "key".
		var dict2 = {"key": [1, 2, 3, 4]}
		# Assigns a dictionary to a key string called "key".
		var dict3 = {"key": dict2}
		# dict3["key"]["key"] # this is how to access a nested dictionary.
		
		# See whats inside our nested dictionary.
		print('dict3["key"]["key"]', dict3["key"]["key"])
		
		# Compare dictionaries throguh hashes
		# Dict1.hash() == dict2.hash()
		print('dict1 == dict2', dict1 == dict2) # print true
		print('dict1.hash() == dict2.hash()', dict1.hash() == dict2.hash()) # print true
		
		# Clear an entire dictionary.
		dict1.clear()
		
		# Remove a specific key from a dictionary.
		dict3.erase("key")
