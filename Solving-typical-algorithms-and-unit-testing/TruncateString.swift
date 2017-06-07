//
//  TruncateString.swift
//  Solving-typical-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/7/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*
 Note that inserting the three dots to the end will add to the string length.
 
 However, if the given maximum string length num is less than or equal to 3, then the addition of the three dots does not add to the string length in determining the truncated string.
 */

import Foundation
class TruncateString{
    func truncateString(str: String, num: Int) -> String{
        var countOfCharInStr = str.characters.count
        let numOfResult = num - 3
        var count = 0
        var arrayOfElements = [String]()
        if num == str.characters.count || num > str.characters.count{
          return str
        }else if num < 4{
            
            for element in str.characters {
                if count < num {
                    arrayOfElements.append(String(element))
                }
                count += 1
            }
            arrayOfElements.append("...")
            let resultStr = arrayOfElements.joined()
            return resultStr
        }else{
            for element in str.characters {
                if count < numOfResult {
                    arrayOfElements.append(String(element))
                }
                count += 1
            }
            arrayOfElements.append("...")
            let resultStr = arrayOfElements.joined()
            return resultStr
        }
        
    }
    
}
