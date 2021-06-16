//
//  UnitTestingDemoUITests.swift
//  UnitTestingDemoUITests
//
//  Created by Frederick Javalera on 6/15/21.
//

import XCTest

class MathOperationsUITests: XCTestCase {
  
  private var app: XCUIApplication!
  
  override func setUp() {
    super.setUp()
    self.app = XCUIApplication()
    self.app.launch()
  }
  
  func test_result_sum_should_equal_eight() {
    let textField1 = self.app.textFields["num1TextField"]
    textField1.tap()
    textField1.typeText("1\n")
    
    let textField2 = self.app.textFields["num2TextField"]
    textField2.tap()
    textField2.typeText("7\n")
    
    let addButton = self.app.buttons["addButton"]
    addButton.tap()
    
    let textView = self.app.staticTexts["resultText"]
    XCTAssertEqual("Result is 8.", textView.label)
  }
  
  func test_should_do_nothing_if_text_fields_are_empty_and_button_is_pressed() throws {
    let addButton = self.app.buttons["addButton"]
    addButton.tap()
    
    let textView = self.app.staticTexts["resultText"]
    XCTAssertEqual("Result is an error.", textView.label)
  }
  
  func test_should_catch_an_invalid_user_input() {
    let textField1 = self.app.textFields["num1TextField"]
    textField1.tap()
    textField1.typeText("1\n")
    
    let textField2 = self.app.textFields["num2TextField"]
    textField2.tap()
    textField2.typeText("A\n")
    
    let addButton = self.app.buttons["addButton"]
    addButton.tap()
    
    let textView = self.app.staticTexts["resultText"]
    XCTAssertEqual("An invalid number was entered!", textView.label)
  }
  
}
