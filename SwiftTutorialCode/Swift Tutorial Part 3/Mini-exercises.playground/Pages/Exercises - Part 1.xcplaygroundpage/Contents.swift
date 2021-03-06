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
/*:
 ## If Statement
 ### Question 1
 Create a constant called `myAge` and set it to your age. Then, create a constant called `isTeenager` that uses Boolean logic to determine if the age denotes someone in the age range of `13` to `19`.
 */
let myAge = 20
let isTeenager = ( 12 < myAge && myAge < 20)

/*:
 ### Question 2
 Create another constant called `theirAge` and set it to my age, which is `34`. Then, create a constant called `bothTeenagers` that uses Boolean logic to determine if both you and I are teenagers.
 */
let theirAge = 34
var bothTeenagers: Bool  = true

if (theirAge > 12 && theirAge < 20 && myAge > 12 && myAge < 20) {
    bothTeenagers = true
} else {
    bothTeenagers = false
}

print(bothTeenagers)

/*:
 ### Question 3
 Create a constant called `reader` and set it to your name as a string. Create a constant called author and set it to my name, Lorenzo Boaro. Create a constant called `authorIsReader` that uses string equality to determine if `reader` and `author` are equal.
 */
let reader = "Mike Lanotte"
let author = "Lorenzo Boaro"
let authorIsReader = (reader == author)


/*:
 ### Question 4
 Create a constant called `readerBeforeAuthor` which uses string comparison to determine if `reader` comes before `author`.
 */
let readerBeforeAuthor = (reader < author)
/*:
 ### Question 5
 Create an if statement to print out `Teenager` if your age is between `13` and `19`, and `Not a teenager` if your age is not between `13` and `19`. Use the `myAge` constant, created previously.
 */
if (myAge > 12 && myAge < 20){
    print("Teenager")
} else {
    print("Not a teenager")
}

/*:
 ### Question 6
 Create a constant called `answer` and use a ternary condition to set it equal to the result you print out for the same cases in the above exercise. Then print out `answer`.
 */
let answer = (myAge > 12 && myAge < 20) ? "Teenager": "Not a teenager"
print(answer)

/*:
 ## While Loops
 ### Question 1
 Create a variable named `counter` and set it equal to `0`. Create a `while` loop with the condition `counter < 10` which prints out `counter` is `X` (where `X` is replaced with counter value) and then increments `counter` by `1`.
*/
var counter = 0
while (counter < 10){
    print(counter)
    counter += 1
}

/*:
 ### Question 2
 Create a variable named `counter` and set it equal to `0`. Create another variable named `roll` and set it equal to `0`. Create a `repeat-while` loop. Inside the loop, set `roll` equal to `Int.random(in: 0..<6)` which means to pick a random number between `0` and `5`. Then increment `counter` by `1`. Finally, print `"After X rolls, roll is Y"` where X is the value of `counter` and Y is the value of `roll`. Set the loop condition such that the loop finishes when the first `0` is rolled.
 */
var counter1 = 0
var roll = 0
repeat {
    roll = Int.random(in: 0..<6)
    counter1 += 1
    print("After \(counter1) rolls, roll is \(roll)")
} while roll != 0

//: [Go to Solutions - Part 1](@next)
