//
//  ConfirmTheEndingTests.swift
//  Solving-typical-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/6/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_typical_algorithms_and_unit_testing

class ConfirmTheEndingTests: XCTestCase {
    let confirmTheEnding = ConfirmTheEnding()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    func testConfirmEnding(){
        let target = "n"
        let str = "Bastian"
        let result = confirmTheEnding.confirmEnding(str: str, target: target)
        XCTAssertTrue(result)
    }
    func testConfirmEndingCheck2(){
        let target = "n"
        let str = "Connor"
        let result = confirmTheEnding.confirmEnding(str: str, target: target)
        XCTAssertFalse(result)
    }
    func testConfirmEndingCheck3(){
        let str = "If you want to save our world, you must hurry. We dont know how much longer we can withstand the nothing"
        let target = "mountain"
        let result = confirmTheEnding.confirmEnding(str: str, target: target)
        XCTAssertFalse(result)
    }
    func testConfirmEndingCheck4(){
        let target = "specification"
        let str = "Walking on water and developing software from a specification are easy if both are frozen"
        let result = confirmTheEnding.confirmEnding(str: str, target: target)
        XCTAssertFalse(result)
    }
    func testConfirmEndingCheck5(){
        let target = "name"
        let str = "He has to give me a new name"
        let result = confirmTheEnding.confirmEnding(str: str, target: target)
        XCTAssertTrue(result)
    }
    func testConfirmEndingCheck6(){
        let str = "Open sesame"
        let target = "same"
        let result = confirmTheEnding.confirmEnding(str: str, target: target)
        XCTAssertTrue(result)
    }
    func testConfirmEndingCheck7(){
        let str = "Open sesame"
        let target = "pen"
        let result = confirmTheEnding.confirmEnding(str: str, target: target)
        XCTAssertFalse(result)
    }
    
    
    
}
