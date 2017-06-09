//
//  CaesarsCipher.swift
//  Solving-typical-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/8/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*
 One of the simplest and most widely known ciphers is a Caesar cipher, also known as a shift cipher. In a shift cipher the meanings of the letters are shifted by some set amount.
 
 A common modern use is the ROT13 cipher, where the values of the letters are shifted by 13 places. Thus 'A' ↔ 'N', 'B' ↔ 'O' and so on.
 
 Write a function which takes a ROT13 encoded string as input and returns a decoded string.
 
 All letters will be uppercase. Do not transform any non-alphabetic character (i.e. spaces, punctuation), but do pass them on.
 */

import Foundation
class CaesarsCipher{
    func rot13(originalStr: String) -> String{
        var arrayOfLetter = [String]()

        for element in Array(originalStr.utf8) {
        
            if element < 65{
                arrayOfLetter.append(String(Character(UnicodeScalar(element))))
            }else if element > 77{
                let letter = element - 13
                arrayOfLetter.append(String(Character(UnicodeScalar(letter))))
            }else if element <= 77{
                let letter = element + 13
                arrayOfLetter.append(String(Character(UnicodeScalar(letter))))
            }
            // print(letter.unicodeScalars.map {$0.value})
        }
        let resultStr = arrayOfLetter.joined()
        
        return resultStr
    }
}
