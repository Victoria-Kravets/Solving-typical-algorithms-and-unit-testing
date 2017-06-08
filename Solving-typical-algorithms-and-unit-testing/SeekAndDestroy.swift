//
//  SeekAndDestroy.swift
//  Solving-typical-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/8/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*
 You will be provided with an initial array (the first argument in the destroyer function), followed arguments. Remove all elements from the initial array that are of the same value as these arguments.
 */

import Foundation
class SeekAndDestroy{
    
    func destroyer<T>(originalArray: Array<T>, firstElement: T, secondElement: T) -> Array<T>{
        var resultArray = [T]()
        for element in originalArray {
            if element is String && element is String{
                if String(describing: element) == String(describing: firstElement) || String(describing: element) == String(describing: secondElement){
                  print("This is same value as argument")
                }else{
                    resultArray.append(element)
                }

            }else if element is Int && element is Int {
                if (element as! Int) == (firstElement as? Int) || (element as! Int) == (secondElement as! Int) {
                    print("This is same value as argument")
                }else{
                    resultArray.append(element)
                }

            }
        }
        
        
        
        return resultArray
    }
    func destroyerWithThirdElement<T>(originalArray: Array<T>, firstElement: T, secondElement: T, thirdElement: T ) -> Array<T>{
        var resultArray = [T]()
        for element in originalArray {
            if element is String && element is String{
                if String(describing: element) == String(describing: firstElement) || String(describing: element) == String(describing: secondElement) || String(describing: element) == String(describing: thirdElement) {
                    print("This is same value as argument")
                }else{
                    resultArray.append(element)
                }
                
            }else if element is Int && element is Int {
                if (element as! Int) == (firstElement as! Int) || (element as! Int) == (secondElement as! Int) || (element as! Int) == (thirdElement as! Int) {
                    print("This is same value as argument")
                }else{
                    resultArray.append(element)
                }
                
            }
        }
        
        
        
        return resultArray
    }
}
