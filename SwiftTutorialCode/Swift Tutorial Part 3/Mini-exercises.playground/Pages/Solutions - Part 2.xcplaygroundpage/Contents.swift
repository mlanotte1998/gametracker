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

//: [Back to Exercises - Part 2](@previous)

import Foundation

/*:
 ## For Loops
 ### Question 1
 Create a variable called `range` and set it equal to a range starting at `1` and ending with `10` inclusive. Write a for loop which iterates over this range and prints the square of each number.
 */

let range = 1...10
for i in range {
  let square = i * i
  print("\(square)")
}

/*:
 ### Question 2
 Write a `for` loop which iterates over the same range as in the exercise above and prints the square root of each number. Use the `sqrt` function to return the square root of the value. Hint: you will need to type convert your loop variable.
 */

for i in range {
  let squareRoot = sqrt(Double(i)) // Same as Double(i).squareRoot()
  print("\(squareRoot)")
}

/*:
 ### Question 3
 In the tutorial, you saw a `for` loop which iterated over only the even rows like so:
 */

var sum = 0
for row in 0..<8 {
  if row % 2 == 0 {
    continue
  }
  for column in 0..<8 {
    sum += row * column
  }
}
sum
/*:
 Change this to use a `where` clause on the first for loop to skip even rows instead of using continue. Check that the sum is `448`.
 */

/*var*/ sum = 0
for row in 0..<8 where row % 2 == 1 {
  for column in 0..<8 {
    sum += row * column
  }
}
sum

/*:
 ## Switch Statements
 ### Question 1
 Write a switch statement that takes an age as an integer and prints out the life stage related to that age. You can make up the life stages, or use my categorization as follows: Infant: 0-2 years, Child: 3-12 years, Teenager: 13-19 years, Adult: 20-39, Middle aged: 40-60, Elderly: 61+.
 */

let myAge = 30

switch myAge {
case 0...2:
  print("Infant")
case 3...12:
  print("Child")
case 13...19:
  print("Teenager")
case 20...39:
  print("Adult")
case 40...60:
  print("Middle aged")
case 61...:
  print("Elderly")
default:
  print("Invalid age")
}

/*:
 ### Question 2
 Write a `switch` statement that takes a tuple containing a string and an integer. The string is a name, and the integer is an age. Use the same cases that you used in the previous exercise and let syntax to print out the name followed by the life stage. For example, for myself it would print out `"Lorenzo is an adult."`.
 */

let tuple = ("Lorenzo", 34)
switch tuple {
case let (name, age) where age >= 0 && age <= 2:
  print("\(name) is an infant")
case let (name, age) where age >= 3 && age <= 12:
  print("\(name) is a child")
case let (name, age) where age >= 13 && age <= 19:
  print("\(name) is a teenager")
case let (name, age) where age >= 20 && age <= 39:
  print("\(name) is an adult")
case let (name, age) where age >= 40 && age <= 60:
  print("\(name) is middle aged")
case let (name, age) where age >= 61:
  print("\(name) is elderly")
default:
  print("Invalid age")
}

