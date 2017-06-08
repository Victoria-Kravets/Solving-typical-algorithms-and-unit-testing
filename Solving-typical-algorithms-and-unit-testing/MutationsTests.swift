//
//  MutationsTests.swift
//  Solving-typical-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/8/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_typical_algorithms_and_unit_testing

class MutationsTests: XCTestCase {
    let mutationObj = Mutations()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testMutation(){
        let originArray = ["hello", "hey"]
        let result = mutationObj.mutation(originArray: originArray)
        XCTAssertFalse(result)
    }
    func testMutationCheck2(){
        let originArray = ["hello", "Hello"]
        let result = mutationObj.mutation(originArray: originArray)
        XCTAssertTrue(result)
    }
    func testMutationCheck3(){
        let originArray = ["zyxwvutsrqponmlkjihgfedcba", "qrstu"]
        let result = mutationObj.mutation(originArray: originArray)
        XCTAssertTrue(result)
    }
    func testMutationCheck4(){
        let originArray = ["Mary", "Army"]
        let result = mutationObj.mutation(originArray: originArray)
        XCTAssertTrue(result)
    }
    func testMutationCheck5(){
        let originArray = ["Mary", "Aarmy"]
        let result = mutationObj.mutation(originArray: originArray)
        XCTAssertTrue(result)
    }
    func testMutationCheck6(){
        let originArray = ["Alien", "line"]
        let result = mutationObj.mutation(originArray: originArray)
        XCTAssertTrue(result)
    }
    func testMutationCheck7(){
        let originArray = ["floor", "for"]
        let result = mutationObj.mutation(originArray: originArray)
        XCTAssertTrue(result)
    }
    func testMutationCheck8(){
        let originArray = ["hello", "neo"]
        let result = mutationObj.mutation(originArray: originArray)
        XCTAssertFalse(result)
    }
    func testMutationCheck9(){
        let originArray = ["voodoo", "no"]
        let result = mutationObj.mutation(originArray: originArray)
        XCTAssertFalse(result)
    }
    
}
