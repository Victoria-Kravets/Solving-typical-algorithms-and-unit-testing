//
//  ChunkyMonkeyTests.swift
//  Solving-typical-algorithms-and-unit-testing
//
//  Created by Viktoria on 6/7/17.
//  Copyright © 2017 Viktoria. All rights reserved.
//

import XCTest
@testable import Solving_typical_algorithms_and_unit_testing

class ChunkyMonkeyTests: XCTestCase {
    let chunkyMonkey = ChunkyMonkey()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testChunkArrayInGroups(){
        let originalArray = ["a", "b", "c", "d"]
        let size = 2
        let checkingDoubleArray : Array<Array<String>> = [["a", "b"], ["c", "d"]]
        let resultDoubleArray : Array<Array<String>> = chunkyMonkey.chunkArrayInGroupsForString(originalArray: originalArray, size: size)
        XCTAssertEqual(resultDoubleArray[0], ["a", "b"])
        XCTAssertEqual(resultDoubleArray[1], ["c", "d"])
    }
    func testChunkArrayInGroupsCheck2(){
        let originalArray = [0, 1, 2, 3, 4, 5]
        let size = 3
        let checkingDoubleArray : Array<Array<Int>> = [[0, 1, 2], [3, 4, 5]]
        let resultDoubleArray : Array<Array<Int>> = chunkyMonkey.chunkArrayInGroupsForInt(originalArray: originalArray, size: size)
        XCTAssertEqual(resultDoubleArray[0], checkingDoubleArray[0])
        XCTAssertEqual(resultDoubleArray[1], checkingDoubleArray[1])
    }
    func testChunkArrayInGroupsCheck3(){
        let originalArray = [0, 1, 2, 3, 4, 5]
        let size = 2
        let checkingDoubleArray : Array<Array<Int>> = [[0, 1], [2, 3], [4, 5]]
        let resultDoubleArray : Array<Array<Int>> = chunkyMonkey.chunkArrayInGroupsForInt(originalArray: originalArray, size: size)
        XCTAssertEqual(resultDoubleArray[0], checkingDoubleArray[0])
        XCTAssertEqual(resultDoubleArray[1], checkingDoubleArray[1])
        XCTAssertEqual(resultDoubleArray[2], checkingDoubleArray[2])
        
    }
    func testChunkArrayInGroupsCheck4(){
        let originalArray = [0, 1, 2, 3, 4, 5]
        let size = 4
        let checkingDoubleArray : Array<Array<Int>> = [[0, 1, 2, 3], [4, 5]]
        let resultDoubleArray : Array<Array<Int>> = chunkyMonkey.chunkArrayInGroupsForInt(originalArray: originalArray, size: size)
        XCTAssertEqual(resultDoubleArray[0], checkingDoubleArray[0])
        XCTAssertEqual(resultDoubleArray[1], checkingDoubleArray[1])
        
        
    }
    func testChunkArrayInGroupsCheck5(){
        let originalArray = [0, 1, 2, 3, 4, 5, 6]
        let size = 3
        let checkingDoubleArray : Array<Array<Int>> = [[0, 1, 2], [3, 4, 5], [6]]
        let resultDoubleArray : Array<Array<Int>> = chunkyMonkey.chunkArrayInGroupsForInt(originalArray: originalArray, size: size)
        XCTAssertEqual(resultDoubleArray[0], checkingDoubleArray[0])
        XCTAssertEqual(resultDoubleArray[1], checkingDoubleArray[1])
        XCTAssertEqual(resultDoubleArray[2], checkingDoubleArray[2])
        
    }
    func testChunkArrayInGroupsCheck6(){
        let originalArray = [0, 1, 2, 3, 4, 5, 6, 7, 8]
        let size = 4
        let checkingDoubleArray : Array<Array<Int>> = [[0, 1, 2, 3], [4, 5, 6, 7], [8]]
        let resultDoubleArray : Array<Array<Int>> = chunkyMonkey.chunkArrayInGroupsForInt(originalArray: originalArray, size: size)
        XCTAssertEqual(resultDoubleArray[0], checkingDoubleArray[0])
        XCTAssertEqual(resultDoubleArray[1], checkingDoubleArray[1])
        XCTAssertEqual(resultDoubleArray[2], checkingDoubleArray[2])
        
    }
    func testChunkArrayInGroupsCheck7(){
        let originalArray = [0, 1, 2, 3, 4, 5, 6, 7, 8]
        let size = 2
        let checkingDoubleArray : Array<Array<Int>> = [[0, 1], [2, 3], [4, 5], [6, 7], [8]]
        let resultDoubleArray : Array<Array<Int>> = chunkyMonkey.chunkArrayInGroupsForInt(originalArray: originalArray, size: size)
        XCTAssertEqual(resultDoubleArray[0], checkingDoubleArray[0])
        XCTAssertEqual(resultDoubleArray[1], checkingDoubleArray[1])
        XCTAssertEqual(resultDoubleArray[2], checkingDoubleArray[2])
        XCTAssertEqual(resultDoubleArray[3], checkingDoubleArray[3])
        XCTAssertEqual(resultDoubleArray[4], checkingDoubleArray[4])
        
    }
    

    
}
