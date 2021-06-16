//
//  MathOperations.swift
//  UnitTestingDemo
//
//  Created by Frederick Javalera on 6/15/21.
//

import Foundation

class MathOperations {
  // MARK: Properties
  
  // MARK: Methods
  static func add(_ num1: Int, to num2: Int) -> Int {
    return num1 + num2
  }
  
  static func subtract(_ num1: Int, from num2: Int) -> Int {
    return num2 - num1
  }
  
  static func multiply(_ num1: Int, by num2: Int) -> Int {
    return num1 * num2
  }
  
  static func divide(_ num1: Int, by num2: Int) -> Double {
    return Double(num1) / Double(num2)
  }
}
