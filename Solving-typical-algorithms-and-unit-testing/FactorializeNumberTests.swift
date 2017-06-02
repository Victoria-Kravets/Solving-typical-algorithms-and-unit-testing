//
//  FactorializeNumberTests.swift
//  Solving-typical-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/1/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_typical_algorithms_and_unit_testing

class FactorializeNumberTests: XCTestCase {
    let factorializeNumber = FactorializeNumber()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    func testFactorialize(){
        let digit = 5
        let checkingDigit = 120
        let factorialOfDigit = factorializeNumber.factorialize(digit: digit)
        XCTAssertEqual(factorialOfDigit, checkingDigit)
    }
    func testFactorializeCheck2(){
        let digit = 10
        let checkingDigit = 3628800
        let factorialOfDigit = factorializeNumber.factorialize(digit: digit)
        XCTAssertEqual(factorialOfDigit, checkingDigit)
    }
    func testFactorializeCheck3(){
        let digit = 20
        let checkingDigit = 2432902008176640000
        let factorialOfDigit = factorializeNumber.factorialize(digit: digit)
        XCTAssertEqual(factorialOfDigit, checkingDigit)
    }
    func testIsFactorialANumber(){
        let digit = 1
        let checkingDigit = 1
        let factorialOfDigit = factorializeNumber.factorialize(digit: digit)
        XCTAssertEqual(factorialOfDigit, checkingDigit)
        XCTAssert(factorialOfDigit is Int)
    }
   
    
}
