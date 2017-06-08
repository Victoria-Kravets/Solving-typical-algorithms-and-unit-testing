//
//  FalsyBouncer.swift
//  Solving-typical-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/8/17.
//  Copyright © 2017 Viktoria. All rights reserved.
/*
 Remove all falsy values from an array.
 */

import Foundation
class FalsyBouncer{
    
    func bouncer(originalArray: Array<Any>) -> Array<Any>{
        var resultArray = [Any]()
        var a = 0
        var b = ""
        for element in originalArray {
            if (element is String ){
                b = String(describing: element)
                if b != ""  {
                    resultArray.append(b)
                }
            }else if (element is Int ){
                a = element as! Int
                if a != 0  {
                    resultArray.append(a)
                }
            }
        }
        
        return resultArray
    }
}
