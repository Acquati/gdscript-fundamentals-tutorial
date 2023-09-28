class_name Human

var UniqueName: String = "John": set = setUniqueName, get = getUniqueName

func _ready():
	UniqueName = "Jane" # Does not call method.
	print(UniqueName) # Does not call method, Jane is assigned.
	
	self.UniqueName = "Aurora" # Activates setter.
	self.UniqueName # Activates getter.

func setUniqueName(uniqueName):
	UniqueName = uniqueName
	print('Activated setter: ', UniqueName, '.')

func getUniqueName():
	print('Activated getter.')
	return UniqueName
