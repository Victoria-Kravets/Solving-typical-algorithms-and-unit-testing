//
//  TitleCaseSentenceTests.swift
//  Solving-typical-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/2/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_typical_algorithms_and_unit_testing
class TitleCaseSentenceTests: XCTestCase {
    let titleCaseSentence = TitleCaseSentence()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    func testTitleCase(){
        let sentence = "I am a little tea pot"
        let checkingSentence = "I Am A Little Tea Pot"
        let resultSentence = titleCaseSentence.titleCase(sentence: sentence)
        XCTAssert(resultSentence is String)
        XCTAssertEqual(resultSentence, checkingSentence)
    }
    func testTitleCaseCheck2(){
        let sentence = "HERE IS MY HANDLE HERE IS MY SPOUT"
        let checkingSentence = "Here Is My Handle Here Is My Spout"
        let resultSentence = titleCaseSentence.titleCase(sentence: sentence)
        XCTAssertEqual(resultSentence, checkingSentence)
    }
    func testTitleCaseCheck3(){
        let sentence = "sHoRt AnD sToUt"
        let checkingSentence = "Short And Stout"
        let resultSentence = titleCaseSentence.titleCase(sentence: sentence)
        XCTAssertEqual(resultSentence, checkingSentence)
    }
    
    
}
