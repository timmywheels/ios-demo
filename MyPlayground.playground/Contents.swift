import UIKit

// Variables

var str = "Tim"

print(str)

let otherStr = "Andrea" // 'let' cannot be overridden

print(otherStr)

print("\n\n\n======================\n\n\n")
// Strings

let name = "Tim Wheeler"

print("Hello, " + name)

print("\n\n\n======================\n\n\n")
// Integers (whole number)

let myInt = 5

var myOtherInt = myInt

print(myInt)

print(myInt * 2)

print(myInt + 100)


myOtherInt * 5

var age = 28

print("My name is \(name) and I am \(age) years old.") // string templates


// Doubles

var a = 5.91

var b: Double = 19.91

print(a + b)

print("\n\n\n======================\n\n\n")
// Booleans

var gameOver = false

var gameOverString = String(gameOver)

if (gameOver) {
    print("Game Over")
} else {
    print("Keep playing!")
    gameOver = !gameOver
}

print("\n\n\n======================\n\n\n")
// Arrays

var array = [5, 10, 15, 20]

print(array[2])

array.append(25)

array.remove(at: 1)

array.sort()

print(array)

print("\n\n\n======================\n\n\n")
var myArr = [3.87, 7.1, 8.9]

myArr.remove(at: 1)

myArr.append(myArr[0] * myArr[1])

print(myArr)

let mixedArray = ["Tim", 28, true] as [Any]

let stringArray = [String](arrayLiteral: "a", "b", "c")

print(stringArray)


print("\n\n\n======================\n\n\n")
// Dictionaries

var dictionary = ["computer": "What I code on", "coffee" : "liquid gold"]

print(dictionary["computer"]!) // use '!'to 'unwrap' the variable, use these sparingly - app will crash if value doesn't exist

print(dictionary.count)

dictionary.removeValue(forKey: "coffee")

print(dictionary)

print("\n\n\n======================\n\n\n")
var gameCharacters = [String : Double]()

gameCharacters["ghost"] = 8.7
gameCharacters["dragon"] = 99.1

print(gameCharacters)


print("\n\n\n======================\n\n\n")
// If Statements

let theAge = 17

if theAge > 18 {
    
    print("You can play")
    
} else {
    
    print("You must be 18 to play")
    
}

let username = "timwheelercom"

let isMale = true



if username == "timwheelercom" {
    
    if theAge >= 18 {
    
        print("access granted...")
        
    } else {
        
        print("you must be 18 to play...")
        
    }
    
} else {
    
    print("access denied...")
    
}

if username == "timwheelercom" && isMale || username == "andreabeland" && !isMale {
    
    print("access granted...")
    
} else {
    
    print("access denied...")
    
}

print("\n\n\n======================\n\n\n")
// While Loops

var myNumber = 10

while myNumber > 0 {
    
    print("My Number is \(myNumber)" )
    myNumber -= 1
    
}

print("\n\n\n======================\n\n\n")
var theArray = [91, 23, 57, 13]

var index = 0

while index < theArray.count {
    
    print(theArray[index])
    index += 1
    
}


print("\n\n\n======================\n\n\n")
// For Loops

let arrayOne = [91, 23, 17, 57]

for number in arrayOne {
    
    print("Number: \(number)")
    
}

print("\n\n\n======================\n\n\n")

var theNumbers = [7, 91, 12, 23, 19]

for (index, value) in theNumbers.enumerated() {
    
    theNumbers[index] += 1
    
    print("Index: \(index)")
    print("Value: \(value)")
    
}

print(theNumbers)


print("\n\n\n======================\n\n\n")
// Classes & Objects

class Ghost {
    
    var isAlive = true
    
    var strength = 0
    
    func kill() {
        
        isAlive = false
        
    }
    
    func isStrong() -> Bool {
        
        if strength > 10 {
            return true
        } else {
            return false
        }
    }
 
    
}

var ghost = Ghost()

print(ghost.isAlive)

ghost.strength = 91

print(ghost.strength)

ghost.kill()

print(ghost.isAlive)

print(ghost.isStrong())


print("\n\n\n======================\n\n\n")
// Optionals

var number: Int? // allows you to declare a variable without initializing it

print(number)

print("\n\n\n======================\n\n\n")

var userEnteredText = "3"

var userEnteredInteger = Int(userEnteredText)

var dogAge = userEnteredInteger! * 7

print(dogAge)

// alternative to check for nil value

if let dogAge = userEnteredInteger {
    
    print(dogAge * 7)
    
}




