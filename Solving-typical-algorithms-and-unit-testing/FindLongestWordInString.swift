//
//  FindLongestWordInString.swift
//  Solving-typical-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/2/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*
 Return the length of the longest word in the provided sentence.
 
 Your response should be a number.
 */

import Foundation
class FindLongestWordInString {
    func findLongestWord(sentence: String) -> Int {
        var arrayOfCharacters = [String]()
        var arrayOfWords = [arrayOfCharacters]
        var theBiggestElement = 0
        var currentElement = 0
        arrayOfWords.removeAll()
        for letter in sentence.characters{
            if letter == " "{
                arrayOfWords.append(arrayOfCharacters)
                arrayOfCharacters = []
                print("_SPACE_")
            }else{
                arrayOfCharacters.append(String(String(letter))!)
            }
        }
        arrayOfWords.append(arrayOfCharacters)
        for element in arrayOfWords{
            currentElement = element.count
            if currentElement > theBiggestElement{
                theBiggestElement = currentElement
            }
        }
        
        
        
        return theBiggestElement
    }
}
