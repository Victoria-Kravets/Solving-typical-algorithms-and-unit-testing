//
//  FalsyBouncerTests.swift
//  Solving-typical-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/8/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_typical_algorithms_and_unit_testing

class FalsyBouncerTests: XCTestCase {
    let falsyBouncer = FalsyBouncer()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testBouncer(){
        let originalArray =  [7, "ate", "", false, 9] as [Any]
        let checkingArray = [7, "ate", 9] as [Any]
        let resultArray = falsyBouncer.bouncer(originalArray: originalArray)
        XCTAssertEqual(resultArray[0] as! Int, checkingArray[0] as! Int)
        XCTAssertEqual(resultArray[1] as! String, checkingArray[1] as! String)
        XCTAssertEqual(resultArray[2] as! Int, checkingArray[2] as! Int)
    }
    func testBouncerCheck2(){
        let originalArray =  ["a", "b", "c"] as [Any]
        let checkingArray = ["a", "b", "c"] as [Any]
        let resultArray = falsyBouncer.bouncer(originalArray: originalArray)
        XCTAssertEqual(resultArray[0] as! String, checkingArray[0] as! String)
        XCTAssertEqual(resultArray[1] as! String, checkingArray[1] as! String)
        XCTAssertEqual(resultArray[2] as! String, checkingArray[2] as! String)
    }
    func testBouncerCheck3(){
        let originalArray =  [false, 0, true, ""] as [Any]
        let checkingArray = [] as [Any]
        let resultArray = falsyBouncer.bouncer(originalArray: originalArray)
        XCTAssertEqual(resultArray as! Array<String>, checkingArray as! Array<String>)
        
    }
    func testBouncerCheck4(){
        let originalArray =  [1, 2, true] as [Any]
        let checkingArray = [1, 2] as [Any]
        let resultArray = falsyBouncer.bouncer(originalArray: originalArray)
        XCTAssertEqual(resultArray[0] as! Int, checkingArray[0] as! Int)
        XCTAssertEqual(resultArray[1] as! Int, checkingArray[1] as! Int)
    }
    
}
