/*:
 # Monday Stretch Problem 3.1
 ## Closures
 
 ### Instructions:
 1. User filter to create an array that contains all the numbers that are multiples of 3 from the numbersArray. Print your result.
 2. Find the largest number from the previous number array and then print it. Use reduce to solve. Print your result.
 3. Join all the string objects in the stringsArray into one string using reduce. Make sure spaces are in between each string. Print your result.
 
 ### Black Diamond 💎💎💎
 In one line convert blackDiamondDictionary into a joined string describing Mama, Papa, and Baby bear's porridge temperature. CompactMap, Reduce, and anonymouse closure arguments will be your friend.
*/

import Foundation

var numbersArray = [11,24,45,44,59,43,88,93,58,11,13,14,15,190]
var stringsArray = ["I", "Love", "DevMountain"]
var blackDiamondDictionary = ["Mama" : "too cold", "Papa" : "too hot", "Baby" : "just right"]

//Couldn't get map to work, learned it returns a new array of the SAME size as the one mapped over. Need to use filter
//func threeFilter() -> [Int] {
//    let numArray = numbersArray.map({ (num) -> Int in
//        if num % 3 == 0 {
//            return num
//        }
//
//    })
//    return numArray
//}

func showMaxNum(numArray: [Int]) -> Int {
    let maxNum = numArray.reduce(0, { result, next in
        result > next ? result : next
    })
    return maxNum
}

func joinStrings(stringArray: [String]) -> String {
    // the reason this does not print "ILove DevMountain" is because $0 is the result of { $0 + $ 1 + " " }, so the FIRST time it's run, $0 is nothing, because there's no result as it's the first time it's being run. Once it's run, $0 has a value, being the result of { $0 + $ 1 + " " }, which in this case is "I "
    let newString = stringArray.reduce(""){ $0 + $1 + " " }
    return newString
}

//print(threeFilter)
print(showMaxNum(numArray: numbersArray))
print(joinStrings(stringArray: stringsArray))

//: [Next](@next)
