//Comments
// This is a one-line Swift comment.

/*
 This is a multi-line
 Swift comment. Isn't Swift great?
 */

// Declaration/Initialization
// In Swift we declare a property before initializing it.
let answer: Int
answer = 42

// Or we can do it at the same time. Note how Swift infers that answer is of type Int.
let answer1 = 42

// Data Types
// Swift is a strongly-typed language, which means that it is very important what type an object is!
// There are several Swift data types, the more common are listed here.

let boolean: Bool = true
let integer: Int = 42
let pi: Double = 3.14
let string: String = "Strings in Swift can be written with double quotes."

// Swift defaults to using Double when given a floating-point number,
// and unless you have a good reason not to, you should as well.

let float: Float = 3.14159
let double = 3.14159 // Double type is inferred

// Collection types in Swift must be explicit about the type of their contents.

let arrayOfStrings = [String]()

// Arrays and Dictionaries should be declared using shorthand syntax.

let arrayOfInts: [Int] = [1, 2, 3]
let dictionaryOfStringDoublePairs: [String : Double] = ["Pi" : 3.1415, "Euler" : 2.71828, "Pythagoras" : 1.41421]

// The compiler can infer the types of the array and dictionary above, we can shorten them as follows.

let arrayOfInts = [1, 2, 3]
let dictionaryOfStringDoublePairs = ["Pi" : 3.1415, "Euler" : 2.71828, "Pythagoras" : 1.41421]

// Sets, however, must be declared using full syntax.

let setOfBools: Set<Bool> = [true, false]

// or...
let setOfInts = Set<Int>()

// All of the properties listed above must contain a value, they cannot be nil.
// To express a nil value in Swift, we need to use optional properties.
// Optionals
// We create an optional property by adding a ? to a Swift type.

var optionalInt: Int? = 42
var optionalString: String? = "Is this a string?"
var optionalArrayOfInts: [Int]? = [1, 2, 3]
var optionalArrayOfOptionalInts: [Int?]? = [1, 2, 3]

// We must unwrap an optional before we can use it. We can do this in a couple of ways.
// Optional binding - the safest way.

if let optionalInt = optionalInt { // Swift convention is to reuse the property name.
    print(optionalInt)
}

// Forced unwrapping - use only when we know the value won't be nil.

let optionalIntAsDouble = Double(optionalInt!)

// Implicit unwrapping - if we are sure a value will exist at runtime we can declare an
// implicitly unwrapped optional property.

var definitelyExists: String! = "The Universe"

definitelyExists = nil //Legal code, but variable now dangerous!

let shoutyString = definitelyExists.uppercased() //Crash at runtime!

// using a guard statement in a function
guard let results = data["results"] else {
    // results key does not exist in data dictionary
    return // must be in a function to use return
}

// Simple Logging
print("Printed!")

// Conditionals
if cake == "delicious" {
    print("Yes please!")
} else if cake == "okay" {
    print("I'll have a small piece.")
} else {
    print("No, thank you.")
}

// Loops
for item in array {
    print(item)
}

while total < maxValue {
    total += values[i]
    i += 2
}

// Functions
func powerOf(_ number: Int, toThe exponent: Int) -> Int {
    var result = 1
    for i in 0..<exponent {
        result *= number
    }
    return result
}

let eightToTheThird = powerOf(8, toThe: 3)

// Classes
class Person {
    
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func birthday() {
        age += 1
    }
}
