//
//  TestsCheckForPalindromes.swift
//  Solving-typical-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/1/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_typical_algorithms_and_unit_testing

class CheckForPalindromesTests: XCTestCase {
    let checkForPalindromes = CheckForPalindromes()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPalindrome(){
        let word = "eye"
        let palindrome = checkForPalindromes.palindrome(word: word)
        XCTAssert(palindrome)
    }
    func testPalindromeCheck2(){
        let word = "_eye"
        let palindrome = checkForPalindromes.palindrome(word: word)
        XCTAssert(palindrome)
    }
    func testPalindromeCheck3(){
        let word = "race car"
        let palindrome = checkForPalindromes.palindrome(word: word)
        XCTAssert(palindrome)
    }
    func testPalindromeCheck4(){
        let word = "not a palindrome"
        let palindrome = checkForPalindromes.palindrome(word: word)
        XCTAssertFalse(palindrome)
    }
    func testPalindromeCheck5(){
        let word = "never odd or even"
        let palindrome = checkForPalindromes.palindrome(word: word)
        XCTAssert(palindrome)
    }
    func testPalindromeCheck6(){
        let word = "nope"
        let palindrome = checkForPalindromes.palindrome(word: word)
        XCTAssertFalse(palindrome)
    }
    func testPalindromeCheck7(){
        let word = "almostomla"
        let palindrome = checkForPalindromes.palindrome(word: word)
        XCTAssertFalse(palindrome)
    }
    func testPalindromeCheck8(){
        let word = "My age is 0, 0 si ega ym."
        let palindromeForUpperAndLowercase = checkForPalindromes.palindromeForUpperAndLowercase(word: word)
        XCTAssert(palindromeForUpperAndLowercase)
    }
    func testPalindromeCheck9(){
        let word = "1 eye for of 1 eye."
        let palindrome = checkForPalindromes.palindrome(word: word)
        XCTAssertFalse(palindrome)
    }
    func testPalindromeCheck10(){
        let word = "0_0 (: /-\" :) 0-0"
        let palindrome = checkForPalindromes.palindrome(word: word)
        XCTAssert(palindrome)
    }
    func testPalindromeCheck11(){
        let word = "five|\"_/|four"
        let palindrome = checkForPalindromes.palindrome(word: word)
        XCTAssertFalse(palindrome)
    }
}
