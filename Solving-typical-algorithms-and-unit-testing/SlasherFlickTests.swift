//
//  SlasherFlickTests.swift
//  Solving-typical-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/8/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_typical_algorithms_and_unit_testing
class SlasherFlickTests: XCTestCase {
    let slasherFlick = SlasherFlick()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSlasher(){
        let originalArray = [1, 2, 3]
        let n = 2
        let checkingArray = [3]
        let result = slasherFlick.slasher(originalArray: originalArray, n: n)
        XCTAssertEqual(result, checkingArray)
    }
    func testSlasherCheck2(){
        let originalArray = [1, 2, 3]
        let n = 0
        let checkingArray = [1, 2, 3]
        let result = slasherFlick.slasher(originalArray: originalArray, n: n)
        XCTAssertEqual(result, checkingArray)
    }
    func testSlasherCheck3(){
        let originalArray = [1, 2, 3]
        let n = 9
        let checkingArray = [Int]()
        let result = slasherFlick.slasher(originalArray: originalArray, n: n)
        XCTAssertEqual(result, checkingArray)
    }
    func testSlasherCheck4(){
        let originalArray = [1, 2, 3]
        let n = 4
        let checkingArray = [Int]()
        let result = slasherFlick.slasher(originalArray: originalArray, n: n)
        XCTAssertEqual(result, checkingArray)
    }
    func testSlasherCheck5(){
        let originalArray = ["burgers", "fries", "shake"]
        let n = 1
        let checkingArray = ["fries", "shake"]
        let result = slasherFlick.slasher(originalArray: originalArray, n: n)
        XCTAssertEqual(result, checkingArray)
    }
    func testSlasherCheck6(){
        let originalArray = [1, 2, "chicken", 3, "potatoes", "cheese", 4] as [Any]
        let n = 5
        let checkingArray = ["cheese", 4] as [Any]
        let result = slasherFlick.slasher(originalArray: originalArray, n: n)
        print(result)
        XCTAssertEqual(result[0] as! String, checkingArray[0] as! String)
        XCTAssertEqual(result[1] as! Int, checkingArray[1] as! Int)
    }
    
}
