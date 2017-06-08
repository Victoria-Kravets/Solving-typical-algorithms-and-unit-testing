//
//  SeekAndDestroyTests.swift
//  Solving-typical-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/8/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_typical_algorithms_and_unit_testing

class SeekAndDestroyTests: XCTestCase {
    let seekAndDestroy = SeekAndDestroy()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDestroyer(){
        let originalArray = [1, 2, 3, 1, 2, 3]
        let firstElement = 2
        let secondElement = 3
        let checkingArray = [1, 1]
        let resultArray = seekAndDestroy.destroyer(originalArray: originalArray, firstElement: firstElement, secondElement: secondElement)
        XCTAssertEqual(resultArray, checkingArray)
    }
    func testDestroyerCheck2(){
        let originalArray = [1, 2, 3, 5, 1, 2, 3]
        let firstElement = 2
        let secondElement = 3
        let checkingArray = [1, 5, 1]
        let resultArray = seekAndDestroy.destroyer(originalArray: originalArray, firstElement: firstElement, secondElement: secondElement)
        XCTAssertEqual(resultArray, checkingArray)
    }
    func testDestroyerCheck3(){
        let originalArray = [3, 5, 1, 2, 2]
        let firstElement = 2
        let secondElement = 3
        let thirdElement = 5
        let checkingArray = [1]
        let resultArray = seekAndDestroy.destroyerWithThirdElement(originalArray: originalArray, firstElement: firstElement, secondElement: secondElement, thirdElement: thirdElement)
        XCTAssertEqual(resultArray, checkingArray)
    }
    func testDestroyerCheck4(){
        let originalArray = [2, 3, 2, 3]
        let firstElement = 2
        let secondElement = 3
        let checkingArray = [Int]()
        let resultArray = seekAndDestroy.destroyer(originalArray: originalArray, firstElement: firstElement, secondElement: secondElement)
        XCTAssertEqual(resultArray, checkingArray)
    }
    func testDestroyerCheck5(){
        let originalArray = ["tree", "hamburger", 53] as [Any]
        let firstElement = "tree"
        let secondElement = 53
        let checkingArray = ["hamburger"]
        let resultArray = seekAndDestroy.destroyer(originalArray: originalArray, firstElement: firstElement, secondElement: secondElement)
        XCTAssertEqual(resultArray[0] as! String, checkingArray[0] as! String)
        
    }

    
    
}
