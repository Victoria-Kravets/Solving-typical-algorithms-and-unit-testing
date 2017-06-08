//
//  WhereDoIBelong.swift
//  Solving-typical-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/8/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*
 Return the lowest index at which a value (second argument) should be inserted into an array (first argument) once it has been sorted. The returned value should be a number.
 
 For example, getIndexToIns([1,2,3,4], 1.5) should return 1 because it is greater than 1 (index 0), but less than 2 (index 1).
 
 Likewise, getIndexToIns([20,3,5], 19) should return 2 because once the array has been sorted it will look like [3,5,20] and 19 is less than 20 (index 2) and greater than 5 (index 1).
 */

import Foundation
class WhereDoIBelong{
    
    var newArray = [Int]()
    var count = 0
    func getIndexToIns(originalArray: Array<Int>, num: Int) -> Int{
        for element in originalArray {
            if !newArray.isEmpty && element <= originalArray[count] {
                newArray.insert(element, at: count)
                count += 1
            }else{
               newArray.append(element)
            }
        }
        for element in newArray{
            if  element >= num{
                return newArray.index(of: element)!
            }
        }
       return 0
    }
}
