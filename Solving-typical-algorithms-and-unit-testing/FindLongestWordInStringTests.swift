//
//  FindLongestWordInStringTests.swift
//  Solving-typical-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/2/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_typical_algorithms_and_unit_testing

class FindLongestWordInStringTests: XCTestCase {
    
    let findLongestWordInString = FindLongestWordInString()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testfindLongestWord(){
        let sentence = "The quick brown fox jumped over the lazy dog"
        let checkingCount = 6
        let theBiggestWordCountInCharacters = findLongestWordInString.findLongestWord(sentence: sentence)
        XCTAssert(theBiggestWordCountInCharacters is Int)
        XCTAssertEqual(theBiggestWordCountInCharacters, checkingCount)
        
    }
    func testfindLongestWordCheck2(){
        let sentence = "May the force be with you"
        let checkingCount = 5
        let theBiggestWordCountInCharacters = findLongestWordInString.findLongestWord(sentence: sentence)
        
        XCTAssertEqual(theBiggestWordCountInCharacters, checkingCount)
        
    }
    func testfindLongestWordCheck3(){
        let sentence = "Google do a barrel roll"
        let checkingCount = 6
        let theBiggestWordCountInCharacters = findLongestWordInString.findLongestWord(sentence: sentence)
        
        XCTAssertEqual(theBiggestWordCountInCharacters, checkingCount)
        
    }
    func testfindLongestWordCheck4(){
        let sentence = "What is the average airspeed velocity of an unladen swallow"
        let checkingCount = 8
        let theBiggestWordCountInCharacters = findLongestWordInString.findLongestWord(sentence: sentence)
        
        XCTAssertEqual(theBiggestWordCountInCharacters, checkingCount)
        
    }
    func testfindLongestWordCheck5(){
        let sentence = "What if we try a super-long word such as otorhinolaryngology"
        let checkingCount = 19
        let theBiggestWordCountInCharacters = findLongestWordInString.findLongestWord(sentence: sentence)
        
        XCTAssertEqual(theBiggestWordCountInCharacters, checkingCount)
        
    }
}
