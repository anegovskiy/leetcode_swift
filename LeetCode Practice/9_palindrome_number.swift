//
//  9_palindrome_number.swift
//  LeetCode Practice
//
//  Created by Andrey on 7/22/21.
//

import Foundation

// 9. Palindrome Number
// solution without String conversions

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        // edge cases
        guard x >= 0 else { return false }
        guard x > 9 else { return true }
        
        // spliting int to digits and saving in array
        var newValue = x
        var digits = [Int]()

        while newValue > 0 {
            let digit = newValue % 10
            digits.append(digit)
            newValue = newValue / 10
        }

        // assure that digits are the same from both ends 
        let lastIndex = digits.count - 1
        for i in 0...lastIndex {
            let frontDigit = digits[i]
            let backDigit = digits[lastIndex - i]

            if frontDigit != backDigit {
                return false
            }
        }

        return true
        
        //        /* more simple but less efficient */
        //        let reversedArray: [Int] = digits.reversed()
        //        return reversedArray == digits
    }
}
