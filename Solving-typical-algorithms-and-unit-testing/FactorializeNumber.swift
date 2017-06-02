//
//  FactorializeNumber.swift
//  Solving-typical-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/1/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*
 Return the factorial of the provided integer.
 
 If the integer is represented with the letter n, a factorial is the product of all positive integers less than or equal to n.
 
 Factorials are often represented with the shorthand notation n!
 
 For example: 5! = 1 * 2 * 3 * 4 * 5 = 120
 */

import Foundation
class FactorializeNumber {
    
    func factorialize(digit: Int) -> Int{
        var result = 1
        var digitCount = digit
        while digitCount > 0{ //1
            result = result * digitCount
            digitCount = digitCount - 1
        }
        
        
        return result
    }
    
    
}
