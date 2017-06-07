//
//  RepeatStringTests.swift
//  Solving-typical-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/7/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_typical_algorithms_and_unit_testing
class RepeatStringTests: XCTestCase {
    let repeatString = RepeatString()
    
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testRepeatStringNumTimes(){
        let str = "*"
        let num = 3
        let checkingStr = "***"
        let resultStr = repeatString.repeatStringNumTimes(str: str, num: num)
        XCTAssertEqual(resultStr, checkingStr)
    }
    func testRepeatStringNumTimesCheck2(){
        let str = "abc"
        let num = 3
        let checkingStr = "abcabcabc"
        let resultStr = repeatString.repeatStringNumTimes(str: str, num: num)
        XCTAssertEqual(resultStr, checkingStr)
    }

    func testRepeatStringNumTimesCheck3(){
        let str = "abc"
        let num = 4
        let checkingStr = "abcabcabcabc"
        let resultStr = repeatString.repeatStringNumTimes(str: str, num: num)
        XCTAssertEqual(resultStr, checkingStr)
    }
    func testRepeatStringNumTimesCheck4(){
        let str = "abc"
        let num = 1
        let checkingStr = "abc"
        let resultStr = repeatString.repeatStringNumTimes(str: str, num: num)
        XCTAssertEqual(resultStr, checkingStr)
    }
    func testRepeatStringNumTimesCheck5(){
        let str = "*"
        let num = 8
        let checkingStr = "********"
        let resultStr = repeatString.repeatStringNumTimes(str: str, num: num)
        XCTAssertEqual(resultStr, checkingStr)
    }

    func testRepeatStringNumTimesCheck6(){
        let str = "abc"
        let num = -2
        let checkingStr = ""
        let resultStr = repeatString.repeatStringNumTimes(str: str, num: num)
        XCTAssertEqual(resultStr, checkingStr)
    }

    
}
