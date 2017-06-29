//
//  SortinTests.swift
//  Demo
//
//  Created by Sam Meech-Ward on 2017-06-29.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

import XCTest
@testable import Demo

class SortinTests: XCTestCase {
    
    var sorter: Sorter!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        sorter = Sorter()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_Sorter_SortsArrayOfNumbers() {
        XCTAssertEqual(sorter.sort(numbers: []), [])
        XCTAssertEqual(sorter.sort(numbers: [1]), [1])
        XCTAssertEqual(sorter.sort(numbers: [1,2]), [1,2])
        XCTAssertEqual(sorter.sort(numbers: [2,1]), [1,2])
    }
    
}
