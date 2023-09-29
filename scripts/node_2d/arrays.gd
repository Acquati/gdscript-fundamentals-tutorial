extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	if is_visible():
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
		
		var simple_array: Array = [1,2,3,4,5]
		# Add a sub-array to arrays.
		var new_array: Array = [1,2]
		simple_array.push_back(new_array)
		
		# Duplicate.
		var deep_copy: Array = simple_array.duplicate(true)
		
		# Edit subarray.
		new_array.push_back(3)
		
		# A change in the sub-array will have zero effect on duplicateArray.
		print('deep_copy_simple_array: ', deep_copy) # print [1, 2, 3, 4, 5, [1, 2]]
		print('simple_array: ', simple_array) # print [1, 2, 3, 4, 5, [1, 2, 3]]
		
		###
		# Duplicate array (shallow copy)
		###
		
		# Clear the array, same as arrays = [].
		simple_array.clear()
		# Add a sub-array to arrays.
		simple_array = [1,2,3,4,5]
		var another_array: Array = [1,2]
		simple_array.push_back(another_array) # print [1, 2, 3, 4, 5, [1, 2]]
		
		# Duplicate.
		var shallow_copy: Array = simple_array.duplicate(false)
		
		# Edit subarray.
		another_array.push_back(3)
		
		# A change in the sub-array will have effect on duplicateArray.
		print('shallow_copy_simple_array: ', shallow_copy) # print [1, 2, 3, 4, 5, [1, 2, 3]]
		print('simple_array: ', simple_array) # print [1, 2, 3, 4, 5, [1, 2, 3]]
		
		simple_array.clear()
		new_array.clear()
		deep_copy.clear()
		another_array.clear()
		shallow_copy.clear()
		
		###
		# Duplicate array (deep copy)
		###
		
		simple_array = [1,2,3,4,5]
		# Add a sub-array to arrays.
		simple_array.push_back([1,2])
		
		# Duplicate.
		deep_copy = simple_array.duplicate(true)
		
		# Edit subarray.
		simple_array[5].push_back(3)
		
		# A change in the sub-array will have zero effect on duplicateArray.
		print('deep_copy_simple_array: ', deep_copy) # print [1, 2, 3, 4, 5, [1, 2]]
		print('simple_array: ', simple_array) # print [1, 2, 3, 4, 5, [1, 2, 3]]
		
		###
		# Duplicate array (shallow copy)
		###
		
		simple_array.clear() # Clear the array, same as arrays = [].
		simple_array = [1,2,3,4,5]
		# Add a sub-array to arrays.
		simple_array.push_back([1,2])
		
		# Duplicate.
		shallow_copy = simple_array.duplicate(false)
		
		# Edit subarray.
		simple_array[5].push_back(3)
		
		# A change in the sub-array will have effect on duplicateArray.
		print('shallow_copy_simple_array: ', shallow_copy) # print [1, 2, 3, 4, 5, [1, 2, 3]]
		print('simple_array: ', simple_array) # print [1, 2, 3, 4, 5, [1, 2, 3]]
		
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
		var string_value: String = "String Show"
		for character in string_value:
			print(character)
		
		var string_length: int = string_value.length()
		var string_array: Array = string_value.split(' ')
		var string_insert: String = string_value.insert(0, 'New ')
		
		print("Character of string in first position", string_value[0])
		print("Length of String: ", string_length)
		print("Array item in position 0: ", string_array[0])
		print("Array: ", string_array)
		print("New String with inserted value: ", string_insert)
