//
//  SlasherFlick.swift
//  Solving-typical-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/8/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*
 Return the remaining elements of an array after chopping off n elements from the head.
 
 The head means the beginning of the array, or the zeroth index.
 */

import Foundation
class SlasherFlick{
  
    func slasher<T>(originalArray: Array<T>, n: Int) -> Array<T> {
        var resultArray = [T]()
        var count = 0
        for element in originalArray {
            if  count >= n{
                resultArray.append(element)
            }
            count += 1
        }
        return resultArray
    }
    
}

