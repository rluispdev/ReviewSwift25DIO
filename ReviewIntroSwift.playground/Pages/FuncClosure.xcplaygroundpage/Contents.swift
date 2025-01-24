//: [Previous](@previous)

func greet(person: String, day: String) -> String {
    return "Hello, \(person)! Today is \(day)."
}

greet(person: "Alice", day: "Monday")

// Custom parameter names
func greet(_ person: String, on day: String) -> String {
    return "Hello, \(person)! Today is \(day)."
}

greet("Ana", on: "Tuesday")

// Returns more than one value
func calculateStatistics(scores: [Int]) -> (sum: Int, min: Int, max: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score < min {
            min = score
        } else if score > max {
            max = score
        }
        sum += score
    }
    
    return (sum, min, max)
}

let statistics = calculateStatistics(scores: [5, 10, 15, 20, 25, 785, 12])
print("Sum: \(statistics.sum)")
print("Minimum score: \(statistics.min)")
print("Maximum score: \(statistics.max)")

// Nested function
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    
    add()
    return y
}

returnFifteen()

// Function that returns another function
func makeIncrementer() -> (Int) -> Int {
    func addOne(number: Int) -> Int {
        return number + 1
    }
    return addOne
}

var increment = makeIncrementer()
increment(130)

// Passes a function as a parameter
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [17, 16, 18, 20, 19, 15]
hasAnyMatches(list: numbers, condition: lessThanTen)

// Closures - blocks of code that can be called later

/// Method 1
numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})

/// Method 2
let mapperNumbers = numbers.map({ number in 3 * number })

print(mapperNumbers)

let sortedNumber = numbers.sorted { $0 > $1 }
print(sortedNumber)
