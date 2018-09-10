//
//  FizzBuzzTests.swift
//  KatasFizzBuzzTests
//
//  Created by Achraf TRABELSI on 10/09/2018.
//  Copyright © 2018 Achraf TRABELSI. All rights reserved.
//

import XCTest

@testable import KatasFizzBuzz

class FizzBuzzTests: XCTestCase {

    let fizzBuzz = FizzBuzz()
    
    override func setUp() {
    }

    override func tearDown() {
    }
    
    func test_should_return_number_when_input_is_not_divisible_by_three_or_five () {
        XCTAssertEqual(fizzBuzz.handle(1), "1")
        XCTAssertEqual(fizzBuzz.handle(4), "4")
        XCTAssertEqual(fizzBuzz.handle(7), "7")
    }
    
    func test_should_return_fizz_when_input_is_divisible_by_three() {
        XCTAssertEqual(fizzBuzz.handle(3), "Fizz")
        XCTAssertEqual(fizzBuzz.handle(6), "Fizz")
        XCTAssertEqual(fizzBuzz.handle(9), "Fizz")
        XCTAssertEqual(fizzBuzz.genericHandle(9), "Fizz") // Use generic method
    }
    
    func test_should_return_buzz_when_input_is_divisible_by_five() {
        XCTAssertEqual(fizzBuzz.handle(5), "Buzz")
        XCTAssertEqual(fizzBuzz.handle(10), "Buzz")
        XCTAssertEqual(fizzBuzz.handle(20), "Buzz")
        XCTAssertEqual(fizzBuzz.genericHandle(20), "Buzz") // Use generic method
    }
    
    func test_should_return_fizzbuzz_when_input_is_divisible_by_three_and_five() {
        XCTAssertEqual(fizzBuzz.handle(15), "FizzBuzz")
        XCTAssertEqual(fizzBuzz.handle(30), "FizzBuzz")
        XCTAssertEqual(fizzBuzz.handle(45), "FizzBuzz")
        XCTAssertEqual(fizzBuzz.genericHandle(45), "FizzBuzz") // Use generic method
    }
    
    func test_should_return_fizzbuzzkuzz_when_input_is_divisible_by_three_and_seven() {
        XCTAssertEqual(fizzBuzz.genericHandle(21
        ), "FizzKuzz")
    }
}
