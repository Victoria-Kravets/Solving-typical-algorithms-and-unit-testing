//
//  TruncateStringTests.swift
//  Solving-typical-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/7/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_typical_algorithms_and_unit_testing
class TruncateStringTests: XCTestCase {
    let truncateStringobj = TruncateString()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testTruncateString(){
      let str = "A-tisket a-tasket A green and yellow basket"
        let num = 11
        let checkingStr = "A-tisket..."
        let resultStr = truncateStringobj.truncateString(str: str, num: num)
        XCTAssertEqual(resultStr, checkingStr)
    }
    func testTruncateStringCheck2(){
        let str = "Peter Piper picked a peck of pickled peppers"
        let num = 14
        let checkingStr = "Peter Piper..."
        let resultStr = truncateStringobj.truncateString(str: str, num: num)
        XCTAssertEqual(resultStr, checkingStr)
    }
    func testTruncateStringCheck3(){
        let str = "A-tisket a-tasket A green and yellow basket"
        let num = str.characters.count
        let checkingStr = "A-tisket a-tasket A green and yellow basket"
        let resultStr = truncateStringobj.truncateString(str: str, num: num)
        XCTAssertEqual(resultStr, checkingStr)
    }
    func testTruncateStringCheck4(){
        let str = "A-tisket a-tasket A green and yellow basket"
        let num = str.characters.count + 2
        let checkingStr = "A-tisket a-tasket A green and yellow basket"
        let resultStr = truncateStringobj.truncateString(str: str, num: num)
        XCTAssertEqual(resultStr, checkingStr)
    }
    func testTruncateStringCheck5(){
        let str = "A-"
        let num = 1
        let checkingStr = "A..."
        let resultStr = truncateStringobj.truncateString(str: str, num: num)
        XCTAssertEqual(resultStr, checkingStr)
    }
    func testTruncateStringCheck6(){
        let str = "Absolutely Longer"
        let num = 2
        let checkingStr = "Ab..."
        let resultStr = truncateStringobj.truncateString(str: str, num: num)
        XCTAssertEqual(resultStr, checkingStr)
    }
    
}
