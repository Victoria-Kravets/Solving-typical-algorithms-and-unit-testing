//
//  Mutations.swift
//  Solving-typical-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/8/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*
 Return true if the string in the first element of the array contains all of the letters of the string in the second element of the array.
 
 For example, ["hello", "Hello"], should return true because all of the letters in the second string are present in the first, ignoring case.
 
 The arguments ["hello", "hey"] should return false because the string "hello" does not contain a "y".
 
 Lastly, ["Alien", "line"], should return true because all of the letters in "line" are present in "Alien".
 */

import Foundation
class Mutations{
    
    func mutation(originArray: Array<String>) -> Bool{
        var firstPartOfArray = [String]()
        var secondPartOfArray = [String]()
        var resultArray = [String]()
        var arrayWithoutInSecondPartArray = [String]()
        let lowercaseFirstArray = originArray[0].lowercased()
        let lowercaseSecondArray = originArray[1].lowercased()
        for element in lowercaseFirstArray.characters{
            firstPartOfArray.append(String(element))
            
        }
        for element in lowercaseSecondArray.characters{
            secondPartOfArray.append(String(element))
        }
        if firstPartOfArray == secondPartOfArray {
            return true
        }else{
            for element in secondPartOfArray{
                for letter in firstPartOfArray{
                    if element == letter {
                        if (resultArray.contains(element)){
                            print("Repeated element")
                        }else{
                            resultArray.append(letter)
                        }
                        
                    }
                }
            }
            for letter in secondPartOfArray {
                if (arrayWithoutInSecondPartArray.contains(letter)){
                    print("Repeated element")
                }else{
                    arrayWithoutInSecondPartArray.append(letter)
                }
            }
            if resultArray == arrayWithoutInSecondPartArray {
                return true
            } else {
                return false
            }
        }
        
       
    }
   

}
