import UIKit

//Review Control Flow

let individualScore = [88, 92, 85, 93, 91]

var teamScore = 0

for score in individualScore {
    if score >= 90 {
        teamScore += 3
    } else if score >= 80 {
        teamScore += 2
    } else {
        teamScore += 1
    }
}

print("Team score: \(teamScore)")


///IF LET
var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "Jonh Doe"
var greeting = "Hello"
if let name = optionalName {
    greeting = "Hello, \(name)!"
}

/// DEFAULT VALUE
let nickname: String? = "ANA"
let fullName: String = "John Doe"
let informalGreeting = "Hello, \(nickname ?? fullName)!"
print(informalGreeting)

///SWITCH

let vegetable: String = "Spinach"
switch vegetable {
case "Spinach":
    print("We love spinach!")
case "Potatoes":
    print("Potatoes are good too!")
default:
    print("We don't know about \(vegetable)")
}


/// Interactive Dictionary

let interestingNumbers = [
    "Prime" : [2, 3, 5, 7, 11, 109],
    "Fibbonacci" : [0, 1, 1, 2, 3, 5],
    "Square": [1, 4, 9, 16, 25]
]

var largest: Int = 0
var key: String = ""

for (_key, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            key = _key
        }
    }
}

print("Largest number: \(largest) (\(key))")


//While

var n = 2

while n <= 10 {
    print(n)
    n += 1
}
print(n)


//Index Interval
var total = 0
for i in 0..<4 {
    total += i
}

print(total)


//Index Interval 2
var newTotal = 0
for i in 0...4 {
    newTotal += i
}

print(newTotal)
