//
//  CaesarsCipherTests.swift
//  Solving-typical-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/8/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_typical_algorithms_and_unit_testing
class CaesarsCipherTests: XCTestCase {
    let caesarsCipher = CaesarsCipher()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testRot13() {
        let originalStr = "SERR PBQR PNZC"
        let checkingStr = "FREE CODE CAMP"
        let resultStr = caesarsCipher.rot13(originalStr: originalStr)
        XCTAssertEqual(resultStr, checkingStr)
    }
    func testRot13Check2() {
        let originalStr = "SERR CVMMN!"
        let checkingStr = "FREE PIZZA!"
        let resultStr = caesarsCipher.rot13(originalStr: originalStr)
        XCTAssertEqual(resultStr, checkingStr)
    }
    func testRot13Check3() {
        let originalStr = "SERR YBIR?"
        let checkingStr = "FREE LOVE?"
        let resultStr = caesarsCipher.rot13(originalStr: originalStr)
        XCTAssertEqual(resultStr, checkingStr)
    }
    func testRot13Check4() {
        let originalStr = "GUR DHVPX OEBJA QBT WHZCRQ BIRE GUR YNML SBK."
        let checkingStr = "THE QUICK BROWN DOG JUMPED OVER THE LAZY FOX."
        let resultStr = caesarsCipher.rot13(originalStr: originalStr)
        XCTAssertEqual(resultStr, checkingStr)
    }
    
    
    
}
