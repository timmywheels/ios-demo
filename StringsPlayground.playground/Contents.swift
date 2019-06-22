import UIKit

var str = "Hello "

var newString = str + "Tim"

for character in newString.characters {
	
	print (character)
	
}

let newTypeString = NSString(string: newString)

print(newTypeString.substring(to: 5))

print(newTypeString.substring(from: 4))

let name = newTypeString.substring(from: 6)

print(name)
