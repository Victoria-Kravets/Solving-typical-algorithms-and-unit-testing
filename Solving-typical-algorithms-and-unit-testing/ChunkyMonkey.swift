//
//  ChunkyMonkey.swift
//  Solving-typical-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/7/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*
 Write a function that splits an array (first argument) into groups the length of size (second argument) and returns them as a two-dimensional array.
 */

import Foundation
class ChunkyMonkey{
    
  
    func chunkArrayInGroups<T>(originalArray: Array<T>, size: Int) -> Array<Array<T>>{
        var simpleArray = [T]()
        var resultArray = [[T]()]
        var i = 0
        var j = 0
        resultArray.removeAll()
        while i < originalArray.count{
            if j < size {
                simpleArray.append(originalArray[i])
                j += 1
            }
            else {
                resultArray.append(simpleArray)
                simpleArray = []
                simpleArray.append(originalArray[i])
                j = 1
                
            }
            i += 1
        }
        resultArray.append(simpleArray)
        
        return resultArray
    }
   }

