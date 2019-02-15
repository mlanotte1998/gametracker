/// Copyright (c) 2018 Razeware LLC
///
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
///
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
///
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

import Foundation

// --------------------
// Comparison Operators
// --------------------

let yes = true // Inferred to be of type Bool
let no = false // Inferred to be of type Bool

// Boolean Operators

let doesOneEqualTwo = (1 == 2)
let doesOneNotEqualTwo = (1 != 2)
let alsoTrue = !(1 == 2)
let isOneGreaterThanTwo = (1 > 2)
let isOneLessThanTwo = (1 < 2)

// Boolean Logic

let and = true && true
let or = true || false

let andTrue = 1 < 2 && 4 > 3
let andFalse = 1 < 2 && 3 > 4

let orTrue = 1 < 2 || 3 > 4
let orFalse = 1 == 2 || 3 == 4

let andOr = (1 < 2 && 3 > 4) || 1 < 4

// String Equality

let guess = "dog"
let dogEqualsCat = guess == "cat"

let order = "cat" < "dog"

// ------------
// If Statement
// ------------

if 2 > 1 {
  print("Yes, 2 is greater than 1.")
}

let animal = "Fox"
if animal == "Cat" || animal == "Dog" {
  print("Animal is a house pet.")
} else {
  print("Animal is not a house pet.")
}

let hourOfDay = 12
var timeOfDay = ""
if hourOfDay < 6 {
  timeOfDay = "Early morning"
} else if hourOfDay < 12 {
  timeOfDay = "Morning"
} else if hourOfDay < 17 {
  timeOfDay = "Afternoon"
} else if hourOfDay < 20 {
  timeOfDay = "Evening"
} else if hourOfDay < 24 {
  timeOfDay = "Late evening"
} else {
  timeOfDay = "INVALID HOUR!"
}
print(timeOfDay)

// Short Circuiting

let name = "Lorenzo"
// The first condition of the if-statement, 1 > 2 is false.
// Therefore the whole expression cannot ever be true.
// So Swift will not even bother to check the second part of the expression,
// namely the check of name.
if 1 > 2 && name == "Lorenzo" {
  // ...
}

// Since 1 < 2 is true, the whole expression must be true as well.
// Therefore once again, the check of name is not executed.
if 1 < 2 || name == "Lorenzo" {
  // ...
}

// -----
// Scope
// -----

var hoursWorked = 45
var price = 0
if hoursWorked > 40 {
  let hoursOver40 = hoursWorked - 40
  price += hoursOver40 * 50
  hoursWorked -= hoursOver40
}
price += hoursWorked * 25
print(price)
//print(hoursOver40) /* Use of unresolved identifier 'hoursOver40' */

// --------------------------------
// The Ternary Conditional Operator
// --------------------------------

let a = 5
let b = 10

/*
 let min: Int
 if a < b {
 min = a
 } else {
 min = b
 }*/
let min = a < b ? a : b // Or just use Swift.min(_:_) function

/*
 let max: Int
 if a > b {
 max = a
 } else {
 max = b
 }*/
let max = a > b ? a : b // Or just use Swift.max(_:_) function

// -----
// Loops
// -----

// While Loops & Repeat-while Loops

//while true { /* Commented out as this will loop forever */
//}

var sum = 1
while sum < 1000 {
  sum = sum + (sum + 1)
}
sum

sum = 1
repeat {
  sum = sum + (sum + 1)
} while sum < 1000
sum

sum = 1
while sum < 1 {
  sum = sum + (sum + 1)
}
sum

sum = 1
repeat {
  sum = sum + (sum + 1)
} while sum < 1
sum

// Breaking Out of a Loop

sum = 1
while true {
  sum = sum + (sum + 1)
  if sum >= 1000 {
    break
  }
}
sum

// ------
// Ranges
// ------

let closedRange = 0...5

let halfOpenRange = 0..<5

// ---------
// For Loops
// ---------

let count = 10
/*var*/ sum = 0

for i in 1...count {
  sum += i
}

sum = 1
var lastSum = 0
for _ in 0..<count {
  let temp = sum
  sum = sum + lastSum
  lastSum = temp
}

sum = 0
for i in 1...count where i % 2 == 1 {
  sum += i
}

// Continue Statement

sum = 0
for row in 0..<8 {
  if row % 2 == 0 {
    continue
  }
  
  for column in 0..<8 {
    sum += row * column
  }
}
sum

// Labeled Statements

sum = 0
rowLoop: for row in 0..<8 {
  columnLoop: for column in 0..<8 {
    if row == column {
      continue rowLoop
    }
    sum += row * column
  }
}
sum

// -----------------
// Switch Statements
// -----------------

let number = 10
switch number {
case 0:
  print("Zero")
default:
  print("Non-zero")
}

switch number {
case 10:
  print("It's ten!")
default:
  break
}

let string = "Dog"
switch string {
case "Cat", "Dog":
  print("Animal is a house pet.")
default:
  print("Animal is not a house pet.")
}

// Advanced Switch Statements

/*var*/ timeOfDay = ""
switch hourOfDay {
case 0, 1, 2, 3, 4, 5:
  timeOfDay = "Early morning"
case 6, 7, 8, 9, 10, 11:
  timeOfDay = "Morning"
case 12, 13, 14, 15, 16:
  timeOfDay = "Afternoon"
case 17, 18, 19:
  timeOfDay = "Evening"
case 20, 21, 22, 23:
  timeOfDay = "Late evening"
default:
  timeOfDay = "INVALID HOUR!"
}
print(timeOfDay)

var timeOfDay2 = ""
switch hourOfDay {
case 0...5:
  timeOfDay2 = "Early morning"
case 6...11:
  timeOfDay2 = "Morning"
case 12...16:
  timeOfDay2 = "Afternoon"
case 17...19:
  timeOfDay2 = "Evening"
case 20..<24:
  timeOfDay2 = "Late evening"
default:
  timeOfDay2 = "INVALID HOUR!"
}
print(timeOfDay2)

switch number {
case let x where x % 2 == 0:
  print("Even")
default:
  print("Odd")
}

switch number {
case _ where number % 2 == 0:
  print("Even")
default:
  print("Odd")
}

// Partial Matching

let coordinates = (x: 3, y: 2, z: 5)
switch coordinates {
case (0, 0, 0): // 1
  print("Origin")
case (_, 0, 0): // 2
  print("On the x-axis.")
case (0, _, 0): // 3
  print("On the y-axis.")
case (0, 0, _): // 4
  print("On the z-axis.")
default:        // 5
  print("Somewhere in space")
}

switch coordinates {
case (0, 0, 0):
  print("Origin")
case (let x, 0, 0):
  print("On the x-axis at x = \(x)")
case (0, let y, 0):
  print("On the y-axis at y = \(y)")
case (0, 0, let z):
  print("On the z-axis at z = \(z)")
case let (x, y, z):
  print("Somewhere in space at x = \(x), y = \(y), z = \(z)")
}

switch coordinates {
case let (x, y, _) where y == x:
  print("Along the y = x line.")
case let (x, y, _) where y == x * x:
  print("Along the y = x^2 line.")
default:
  break
}
