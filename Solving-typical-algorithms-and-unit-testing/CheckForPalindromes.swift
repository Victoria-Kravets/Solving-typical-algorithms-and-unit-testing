//
//  CheckForPalindromes.swift
//  Solving-typical-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/1/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*
 Return true if the given string is a palindrome. Otherwise, return false.
 
 A palindrome is a word or sentence that's spelled the same way both forward and backward, ignoring punctuation, case, and spacing.
 
 Note
 You'll need to remove all non-alphanumeric characters (punctuation, spaces and symbols) and turn everything lower case in order to check for palindromes.
 
 We'll pass strings with varying formats, such as "racecar", "RaceCar", and "race CAR" among others.
 

 */

import Foundation
class CheckForPalindromes{
    func palindrome(word: String) -> Bool{
        var reverseWord = ""
        let text = word
        
        var digits = [String]()
        for element in text.characters {
            
            if element == " " || element == ":" || element == "_" || element == "-" || element == "/" || element == ")" || element == "(" || element == ")" || element == "\"" || element == ")" || element == "_" || element == "," || element == "."{
              print("Not string")
            }else{
                digits.append(String(String(element))!)
                print(element)
            }
        }
        
        let stringValue = digits.joined()
    
        reverseWord = String(stringValue.characters.reversed())
        if reverseWord == stringValue {
            return true
        }else{
          return false
        }
    
    }
    func palindromeForUpperAndLowercase(word: String) -> Bool{
        var reverseWord = ""
        let text = word
        
        var digits = [String]()
        var digits2 = [String]()
        for element in text.characters {
            
            if element == " " || element == ":" || element == "_" || element == "-" || element == "/" || element == ")" || element == "(" || element == ")" || element == "\"" || element == ")" || element == "_" || element == "," || element == "."{
                print("Not string")
            }else{
                digits.append(String(String(element))!)
                print(element)
            }
        }
        let value :[String] = [String(describing: digits).lowercased()]
        let stringValue = value.joined()
        
        for element in stringValue.characters {
            if element == " " || element == "]" || element == "[" || element == "/"  || element == "," || element == "\""{
                print("Not string")
            }else{
                digits2.append(String(String(element))!)
                print(element)
            }
        }
        let newStringValue = digits2.joined()
        reverseWord = String(newStringValue.characters.reversed())
        if reverseWord == newStringValue {
            return true
        }else{
            return false
        }
        
    }
}
