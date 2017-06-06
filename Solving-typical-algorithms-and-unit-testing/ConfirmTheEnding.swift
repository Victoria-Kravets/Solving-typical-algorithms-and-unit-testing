//
//  ConfirmTheEnding.swift
//  Solving-typical-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/6/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*
 Check if a string (first argument, str) ends with the given target string (second argument, target).
 */

import Foundation
class ConfirmTheEnding {
    func confirmEnding(str: String, target: String) -> Bool{
        var arrayOfCompareElemens = [String]()
        var arrayOfNotCompareElements = [String]()
        var countOfTarget = target.characters.count
        var countOfStr = str.characters.count
        
        
        
        for letter in str.characters {
            if countOfStr > countOfTarget{
             arrayOfNotCompareElements.append(String(letter))
            }else{
             arrayOfCompareElemens.append(String(letter))
            }
            countOfStr -= 1
        }
        let result = arrayOfCompareElemens.joined()
       
        if result == target  {
            return true
        } else {
            return false
        }
        
        
        
        
    }
}
