//
//  ReturnLargestNumbersInArrays.swift
//  Solving-typical-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/2/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*
 Return an array consisting of the largest number from each provided sub-array. For simplicity, the provided array will contain exactly 4 sub-arrays.
 */

import Foundation
class ReturnLargestNumbersInArrays{
    func largestOfFour(doubleArray: Array<Array<Int>>) -> Array<Int> {
        var arrayOfDigit = [Int]()
        var resultArrayOfMax = [Int]()
        var maxDigit = 0
        for element in doubleArray{
            arrayOfDigit = element
            for digit in arrayOfDigit{
                if digit > maxDigit {
                 maxDigit = digit
                }
            }
            resultArrayOfMax.append(maxDigit)
            maxDigit = 0
        }
        return resultArrayOfMax
    }
}
