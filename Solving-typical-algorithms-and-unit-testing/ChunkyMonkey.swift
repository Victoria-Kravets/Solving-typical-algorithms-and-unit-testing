//
//  ChunkyMonkey.swift
//  Solving-typical-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/7/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import Foundation
class ChunkyMonkey{
    
    func chunkArrayInGroupsForString(originalArray: Array<String>, size: Int) -> Array<Array<String>>{
        var simpleArray = [String]()
        var resultArray = [[String]()]
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
                j = 0
                
            }
            i += 1
        }
        resultArray.append(simpleArray)
        
        return resultArray
    }
    func chunkArrayInGroupsForInt(originalArray: Array<Int>, size: Int) -> Array<Array<Int>>{
        var simpleArray = [Int]()
        var resultArray = [[Int]()]
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

