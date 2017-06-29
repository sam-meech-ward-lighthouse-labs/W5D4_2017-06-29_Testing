//
//  CalculatorTests.swift
//  Demo
//
//  Created by Sam Meech-Ward on 2017-06-29.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

import XCTest
@testable import Demo

class CalculatorTests: XCTestCase {
    
    var calculator: Calculator!
    
    override class func setUp() {
        // Called once for the entire file
    }
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        calculator = Calculator()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_Calculator_AddsArrayOfNumbers() {
        XCTAssertEqual(calculator.add(numbers: [1,2,3]), 6, "adding numbers didn't work correctly")
        XCTAssertEqual(calculator.add(numbers: [1,2,3,4]), 10, "adding numbers didn't work correctly")
    }
    
    func test_Calculator_AddsArrayOfNegativeNumbers() {
        XCTAssertEqual(calculator.add(numbers: [-1,-2,-3]), -6, "adding numbers didn't work correctly")
        XCTAssertEqual(calculator.add(numbers: [-1,-2,-3,-4]), -10, "adding numbers didn't work correctly")
    }
    
    func test_Calculator_SubtractsArrayOfNumbers() {
        XCTAssertEqual(calculator.subtract(numbers: [1,2,3]), -6, "subtracting numbers didn't work correctly")
    }
    
    func test_Calculator_MultipliesArrayOfNumbers() {
        XCTAssertEqual(calculator.multiply(numbers: []), 0, "Multiplying empty array together didn't work")
        XCTAssertEqual(calculator.multiply(numbers: [1]), 1, "Multiplying empty array together didn't work")
        XCTAssertEqual(calculator.multiply(numbers: [1, 2]), 2, "Multiplying empty array together didn't work")
        XCTAssertEqual(calculator.multiply(numbers: [1, 2, 3, 4]), 24, "Multiplying empty array together didn't work")
    }
    
}
