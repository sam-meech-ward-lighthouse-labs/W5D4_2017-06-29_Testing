//
//  Calculator.swift
//  Demo
//
//  Created by Sam Meech-Ward on 2017-06-29.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

import Foundation

struct Calculator {
    
    func add(numbers: [Int]) -> Int {
        return numbers.reduce(0) { (result, currentNumber) -> Int in
            return result + currentNumber
        }
    }
    
    func subtract(numbers: [Int]) -> Int {
        return -add(numbers: numbers)
    }
    
    func multiply(numbers: [Int]) -> Int {
        if numbers.isEmpty {
            return 0
        }
        
        return numbers.reduce(1) { (result, currentNumber) -> Int in
            return result * currentNumber
        }
    }
    
}
