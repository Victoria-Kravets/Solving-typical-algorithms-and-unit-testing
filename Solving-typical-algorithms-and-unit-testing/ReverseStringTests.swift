//
//  ReverseStringTests.swift
//  Solving-typical-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/1/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_typical_algorithms_and_unit_testing

class ReverseStringTests: XCTestCase {
    let reverseString = ReverseString()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    func testIsStringReverse(){
        let word = "hello"
       
        let checkingWord = "olleh"
        let returnWord = reverseString.isStringReverse(word: word)
        XCTAssertEqual(returnWord, checkingWord)
    }
    func testIsWordHowdyReverse(){
        let word = "Howdy"
        let checkingWord = "ydwoH"
        let returnWord = reverseString.isStringReverse(word: word)
        XCTAssertEqual(returnWord, checkingWord)
        

    }
    func testIsWordGreetingsFromEarthReverse(){
        let word = "Greetings from Earth"
        let checkingWord = "htraE morf sgniteerG"
        let returnWord = reverseString.isStringReverse(word: word)
        XCTAssertEqual(returnWord, checkingWord)
       

    }
    func testIsReversedWordString(){
        let word = "hello"
        let checkingWord = "olleh"
        let returnWord = reverseString.isStringReverse(word: word)
        XCTAssert(returnWord is String)
    }
}
