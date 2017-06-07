//
//  RepeatString.swift
//  Solving-typical-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/7/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*
 Repeat a given string (first argument) num times (second argument). Return an empty string if num is not a positive number.
 */

import Foundation
class RepeatString{
    
    
    func repeatStringNumTimes(str: String, num: Int) -> String {
        var count = num
        var arrayOfElements = [String]()
        if count > 0 {
            while count > 0 {
                for element in str.characters {
                    arrayOfElements.append(String(element))
                }
                count -= 1
            }
            let result = arrayOfElements.joined()
            return result
        } else{
            return ""
        }
        
        
        
        
        
    }
    
    
}
