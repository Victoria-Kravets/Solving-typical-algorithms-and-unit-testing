//
//  ReturnLargestNumbersInArraysTests.swift
//  Solving-typical-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/2/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_typical_algorithms_and_unit_testing
class ReturnLargestNumbersInArraysTests: XCTestCase {
    let returnLargestNumbersInArrays = ReturnLargestNumbersInArrays()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testLargestOfFour() {
        let doubleArray = [[4, 5, 1, 3], [13, 27, 18, 26], [32, 35, 37, 39], [1000, 1001, 857, 1]]
        let checkingArray = [5,27,39,1001]
        let resultArray = returnLargestNumbersInArrays.largestOfFour(doubleArray: doubleArray)
        XCTAssertEqual(resultArray, checkingArray)
    }
    func testLargestOfFourCheck2() {
    let doubleArray = [[4, 9, 1, 3], [13, 35, 18, 26], [32, 35, 97, 39], [1000000, 1001, 857, 1]]
    let checkingArray = [9, 35, 97, 1000000]
    let resultArray = returnLargestNumbersInArrays.largestOfFour(doubleArray: doubleArray)
    XCTAssertEqual(resultArray, checkingArray)
        XCTAssert(resultArray is Array<Int>)
    }
    
}
