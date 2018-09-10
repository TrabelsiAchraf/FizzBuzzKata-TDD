//
//  FizzBuzz.swift
//  KatasFizzBuzz
//
//  Created by Achraf TRABELSI on 10/09/2018.
//  Copyright © 2018 Achraf TRABELSI. All rights reserved.
//

import Foundation

class FizzBuzz {
    
    var tuples = [(3, "Fizz"), (5, "Buzz"), (7, "Kuzz")]
    
    fileprivate func isDivisibleBy3(_ number: Int) -> Bool {
        return number % 3 == 0
    }
    
    fileprivate func isDivisibleBy5(_ number: Int) -> Bool {
        return number % 5 == 0
    }
    
    /// Check if number if divisible by three, five or both then return specific message.
    ///
    /// - Parameter number: number to check
    /// - Returns: Fizz if divisible by 3, Buzz if divisible by 5, FizzBuzz if divisible by both 3 and 5, String Number if else.
    func handle(_ number: Int) -> String {
        if isDivisibleBy3(number) && isDivisibleBy5(number) {
            return "FizzBuzz"
        }

        if isDivisibleBy3(number) {
            return "Fizz"
        }

        if isDivisibleBy5(number) {
            return "Buzz"
        }

        return "\(number)"
    }
    
    
    /// Generic method to handle FizzBuzz concept.
    ///
    /// - Parameter number: number to check.
    /// - Returns: generic handle to FizzBuzz logic.
    func genericHandle(_ number: Int) -> String {
        var result = ""
        tuples = tuples.filter { number % $0.0 == 0 }
        result = tuples.map { $0.1 }.compactMap({$0}).joined()
        
        if result == "" {
            result = "\(number)"
        }
        
        return result
    }
}
