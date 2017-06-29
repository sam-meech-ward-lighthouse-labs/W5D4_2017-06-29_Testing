//
//  Sorter.swift
//  Demo
//
//  Created by Sam Meech-Ward on 2017-06-29.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

import Foundation

struct Sorter {
    
    func sort(numbers: [Int]) -> [Int] {
        
        if numbers.count <= 1 {
            return numbers 
        }
        
        var results = numbers
        
        if numbers[0] > numbers[1] {
            results[0] = numbers[1]
            results[1] = numbers[0]
        }
        
        return results
    }
}
