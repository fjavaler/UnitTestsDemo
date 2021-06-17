//
//  ContentView.swift
//  UnitTestingDemo
//
//  Created by Frederick Javalera on 6/15/21.
//

import SwiftUI

struct ContentView: View {
  
  // MARK: Properties
  @State private var value1: String = ""
  @State private var value2: String = ""
  @State private var result: String = ""
  @State private var hasValidNumbersToOperateOn = false
  @State private var showResultMessage = false
  let buttonHeight: CGFloat = 60
  let buttonWidth: CGFloat = 70
  
  // MARK: Body
  var body: some View {
    ZStack {
      Color.init(#colorLiteral(red: 0.9995340705, green: 0.988355577, blue: 0.4726552367, alpha: 1))
        .ignoresSafeArea()
      VStack {
        Spacer()
        Spacer()
        TextField("Enter the first number", text: $value1)
          .textFieldStyle(RoundedBorderTextFieldStyle())
          .accessibility(identifier: "num1TextField")
        Divider()
        TextField("Enter the second number", text: $value2)
          .textFieldStyle(RoundedBorderTextFieldStyle())
          .accessibility(identifier: "num2TextField")
        Spacer()
        HStack(spacing: 15) {
          Button(action: {
            if value1.isEmpty || value2.isEmpty {
              result = "an error"
              return
            }
            
            if let value1AsInt = Int(value1),
               let value2AsInt = Int(value2) {
              result = "\(MathOperations.add(value1AsInt, to: value2AsInt))"
            } else {
              result = "An invalid number was entered!"
            }
            showResultMessage = true
          }, label: {
            Text("➕")
              .frame(width: buttonWidth, height: buttonHeight)
              .background(Color.blue)
          })
          .cornerRadius(10)
          .accessibility(identifier: "addButton")
          
          Button(action: {
            if let value1AsInt = Int(value1),
               let value2AsInt = Int(value2) {
              result = "\(MathOperations.subtract(value2AsInt, from: value1AsInt))"
            } else {
              result = "An invalid number was entered!"
            }
            showResultMessage = true
          }, label: {
            Text("➖")
              .frame(width: buttonWidth, height: buttonHeight)
              .background(Color.blue)
          })
          .cornerRadius(10)
          
          Button(action: {
            if let value1AsInt = Int(value1),
               let value2AsInt = Int(value2) {
              result = "\(MathOperations.multiply(value1AsInt, by: value2AsInt))"
            } else {
              result = "An invalid number was entered!"
            }
            showResultMessage = true
          }, label: {
            Text("✖️")
              .frame(width: buttonWidth, height: buttonHeight)
              .background(Color.blue)
          })
          .cornerRadius(10)
          
          Button(action: {
            if let value1AsInt = Int(value1),
               let value2AsInt = Int(value2) {
              result = "\(MathOperations.divide(value1AsInt, by: value2AsInt))"
            } else {
              result = "An invalid number was entered!"
            }
            showResultMessage = true
          }, label: {
            Text("➗")
              .frame(width: buttonWidth, height: buttonHeight)
              .background(Color.blue)
          })
          .cornerRadius(10)
        }
        .foregroundColor(.white)
        .font(.headline)
        
        Spacer()
        Text(result == "An invalid number was entered!" ? "An invalid number was entered!" : "Result is \(result).")
          .font(.largeTitle)
          .opacity(showResultMessage ? 1.0 : 0.0)
          .accessibility(identifier: "resultText")
        Spacer()
      }
      .padding(.horizontal, 40)
    }
  }
}

// MARK: Preview
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
