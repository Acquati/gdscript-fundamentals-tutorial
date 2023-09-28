extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	if (is_visible()):		
		var array: Array = [1,2,3,4,5]
		
		print(array)
		array.pop_back()
		print(array)
		array.pop_front()
		print(array)
		array.push_back(5)
		print(array)
		array.push_front(1)
		print(array)
		array.clear()
		print(array)
			
		print(array.size())
		
		###
		# Duplicate array (deep copy)
		###
		
		var simpleArray: Array = [1,2,3,4,5]
		# Add a sub-array to arrays.
		var newArray: Array = [1,2]
		simpleArray.push_back(newArray)
		
		# Duplicate.
		var deepCopy: Array = simpleArray.duplicate(true)
		
		# Edit subarray.
		newArray.push_back(3)
		
		# A change in the sub-array will have zero effect on duplicateArray.
		print('deepCopySimpleArray: ', deepCopy) # print [1, 2, 3, 4, 5, [1, 2]]
		print('simpleArray: ', simpleArray) # print [1, 2, 3, 4, 5, [1, 2, 3]]
		
		###
		# Duplicate array (shallow copy)
		###
		
		# Clear the array, same as arrays = [].
		simpleArray.clear()
		# Add a sub-array to arrays.
		simpleArray = [1,2,3,4,5]
		var anotherArray: Array = [1,2]
		simpleArray.push_back(anotherArray) # print [1, 2, 3, 4, 5, [1, 2]]
		
		# Duplicate.
		var shallowCopy: Array = simpleArray.duplicate(false)
		
		# Edit subarray.
		anotherArray.push_back(3)
		
		# A change in the sub-array will have effect on duplicateArray.
		print('shallowCopySimpleArray: ', shallowCopy) # print [1, 2, 3, 4, 5, [1, 2, 3]]
		print('simpleArray: ', simpleArray) # print [1, 2, 3, 4, 5, [1, 2, 3]]
		
		simpleArray.clear()
		newArray.clear()
		deepCopy.clear()
		anotherArray.clear()
		shallowCopy.clear()
		
		###
		# Duplicate array (deep copy)
		###
		
		simpleArray = [1,2,3,4,5]
		# Add a sub-array to arrays.
		simpleArray.push_back([1,2])
		
		# Duplicate.
		deepCopy = simpleArray.duplicate(true)
		
		# Edit subarray.
		simpleArray[5].push_back(3)
		
		# A change in the sub-array will have zero effect on duplicateArray.
		print('deepCopySimpleArray: ', deepCopy) # print [1, 2, 3, 4, 5, [1, 2]]
		print('simpleArray: ', simpleArray) # print [1, 2, 3, 4, 5, [1, 2, 3]]
		
		###
		# Duplicate array (shallow copy)
		###
		
		simpleArray.clear() # Clear the array, same as arrays = [].
		simpleArray = [1,2,3,4,5]
		# Add a sub-array to arrays.
		simpleArray.push_back([1,2])
		
		# Duplicate.
		shallowCopy = simpleArray.duplicate(false)
		
		# Edit subarray.
		simpleArray[5].push_back(3)
		
		# A change in the sub-array will have effect on duplicateArray.
		print('shallowCopySimpleArray: ', shallowCopy) # print [1, 2, 3, 4, 5, [1, 2, 3]]
		print('simpleArray: ', simpleArray) # print [1, 2, 3, 4, 5, [1, 2, 3]]
		
		var array1: Array = ['a','b','c']
		var array2: String = 'd'
		array1.push_back(array2)
		var array3: Array = array1.duplicate(false)
		array2 = 'e'
		
		print('array1: ', array1)
		print('array2: ', array2)
		print('array3: ', array3)
		
		print('Strings')
		var string1: String = '0123 5678'
		print('string1: ', string1)
		string1 = string1.insert(4, 'abc')
		print('string1: ', string1)
		
		print("For loop print: ")
		var stringValue: String = "String Show"
		for character in stringValue:
			print(character)
		
		var stringLength: int = stringValue.length()
		var stringArray: Array = stringValue.split(' ')
		var stringInsert: String = stringValue.insert(0, 'New ')
		
		print("Character of string in first position", stringValue[0])
		print("Length of String: ", stringLength)
		print("Array item in position 0: ", stringArray[0])
		print("Array: ", stringArray)
		print("New String with inserted value: ", stringInsert)
