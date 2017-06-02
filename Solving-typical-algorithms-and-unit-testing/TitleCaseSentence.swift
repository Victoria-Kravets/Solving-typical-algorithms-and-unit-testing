//
//  TitleCaseSentence.swift
//  Solving-typical-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/2/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*
 Return the provided string with the first letter of each word capitalized. Make sure the rest of the word is in lower case.
 
 For the purpose of this exercise, you should also capitalize connecting words like "the" and "of".
 */

import Foundation
class TitleCaseSentence{
    func titleCase(sentence: String) -> String {
        var arrayOfCharacters = [String]()
        var arrayOfWords = [String]()
        var arrayOfCharacterModified = ""
        let lowercaseSentense = sentence.lowercased()
        print(lowercaseSentense)
        
        arrayOfWords.removeAll()
        for letter in lowercaseSentense.characters{
            if letter == " "{
                arrayOfCharacterModified = arrayOfCharacters.joined()
                arrayOfWords.append(arrayOfCharacterModified)
                arrayOfCharacters = []
                print("_SPACE_")
            }else{
               
                
                arrayOfCharacters.append(String(String(letter))!)
                let firstLetter = arrayOfCharacters.first?.uppercased()
                let first = arrayOfCharacters.index(of: arrayOfCharacters[0])
                arrayOfCharacters[first!] = firstLetter!
               
            }
        }
        arrayOfCharacterModified = arrayOfCharacters.joined()
        arrayOfWords.append(arrayOfCharacterModified)
        
        print(arrayOfWords)
        let finalArrayOfWords = arrayOfWords.joined(separator: " ")
        
        print(finalArrayOfWords)
        
        
        
        
        return finalArrayOfWords
    }
}
