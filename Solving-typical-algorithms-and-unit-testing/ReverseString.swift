//
//  ReverseString.swift
//  Solving-typical-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/1/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*
 Reverse the provided string, result must be a string
 */

import Foundation
class ReverseString{
   
    var reverseWord = ""
    
    func isStringReverse(word: String) -> String{
     reverseWord = String(word.characters.reversed())
        return reverseWord
    }

    
    
    
    
}
