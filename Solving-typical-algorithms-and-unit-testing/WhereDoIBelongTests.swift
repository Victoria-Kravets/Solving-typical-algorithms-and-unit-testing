//
//  WhereDoIBelongTests.swift
//  Solving-typical-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/8/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_typical_algorithms_and_unit_testing

class WhereDoIBelongTests: XCTestCase {
    let whereDoIBelong = WhereDoIBelong()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGetIndexToIns(){
        let originalArray = [10, 20, 30, 40, 50]
        let num = 35
        let checkingIndex = 3
        let resultIndex = whereDoIBelong.getIndexToIns(originalArray: originalArray, num: num)
        XCTAssertEqual(resultIndex, checkingIndex)
    }
    func testGetIndexToInsCheck2(){
        let originalArray = [10, 20, 30, 40, 50]
        let num = 35
        let checkingIndex = 3
        let resultIndex = whereDoIBelong.getIndexToIns(originalArray: originalArray, num: num)
        XCTAssertEqual(resultIndex, checkingIndex)
    }
    func testGetIndexToInsCheck3(){
        let originalArray = [10, 20, 30, 40, 50]
        let num = 35
        let checkingIndex = 3
        let resultIndex = whereDoIBelong.getIndexToIns(originalArray: originalArray, num: num)
        XCTAssertEqual(resultIndex, checkingIndex)
    }
    func testGetIndexToInsCheck4(){
        let originalArray = [10, 20, 30, 40, 50]
        let num = 35
        let checkingIndex = 3
        let resultIndex = whereDoIBelong.getIndexToIns(originalArray: originalArray, num: num)
        XCTAssertEqual(resultIndex, checkingIndex)
    }
    func testGetIndexToInsCheck5(){
        let originalArray = [5, 3, 20, 3]
        let num = 5
        let checkingIndex = 2
        let resultIndex = whereDoIBelong.getIndexToIns(originalArray: originalArray, num: num)
        XCTAssertEqual(resultIndex, checkingIndex)
    }
    func testGetIndexToInsCheck6(){
        let originalArray = [10, 20, 30, 40, 50]
        let num = 35
        let checkingIndex = 3
        let resultIndex = whereDoIBelong.getIndexToIns(originalArray: originalArray, num: num)
        XCTAssertEqual(resultIndex, checkingIndex)
    }
    func testGetIndexToInsCheck7(){
        let originalArray = [10, 20, 30, 40, 50]
        let num = 35
        let checkingIndex = 3
        let resultIndex = whereDoIBelong.getIndexToIns(originalArray: originalArray, num: num)
        XCTAssertEqual(resultIndex, checkingIndex)
    }
    
}
