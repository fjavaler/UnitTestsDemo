//
//  UnitTestingDemoTests.swift
//  UnitTestingDemoTests
//
//  Created by Frederick Javalera on 6/15/21.
//

import XCTest
@testable import UnitTestingDemo

class MathOperationsTests: XCTestCase {
  
  // MARK: Properties
  let one = 1
  let ten = 10
  let oneHundred = 100
  let oneThousand = 1_000
  let tenThousand = 10_000
  let oneHundredThousand = 100_000
  let three = 3
  let five = 5
  let seven = 7
  
  override func setUp() {
  }
  
  func testOnePlusSeven() {
    let sum = MathOperations.add(one, to: seven)
    XCTAssertEqual(8, sum)
  }
  
  func testOneMinusSeven() {
    let difference = MathOperations.subtract(seven, from: one)
    XCTAssertEqual(-6, difference)
  }
  
  func testOneTimesSeven() {
    let product = MathOperations.multiply(one, by: seven)
    XCTAssertEqual(seven, product)
  }
  
  func testOneDividedBySeven() {
    let quotient = MathOperations.divide(1, by: 7)
    XCTAssertEqual(0.14285714285714285, quotient)
  }
  
  func testOneHundredTimesOneThousand() {
    let product = MathOperations.multiply(oneHundred, by: oneThousand)
    XCTAssertEqual(oneHundredThousand, product)
  }
}
