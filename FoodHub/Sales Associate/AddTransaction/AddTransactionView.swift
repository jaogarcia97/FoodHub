//
//  AddTransactionView.swift
//  FoodHub
//
//  Created by Jao Garcia on 9/11/23.
//

import SwiftUI

enum CalculatorState {
    case idle
    case typing
    case calculating
}


struct AddTransactionView: View {
    
    @State private var displayText = "0"
    @State private var currentInput = ""
    @State private var currentOperator: Character?
    @State private var currentOperand: Double?
    @State private var calculatorState: CalculatorState = .idle
    
    @State private var stepperAmount = 8.0
    @State private var quantity: Int = 0
    
    let buttonRows: [[String]] = [
        ["7", "8", "9"],
        ["4", "5", "6"],
        ["1", "2", "3"],
        ["C", "0", "="]
    ]
    
    var body: some View {
        
        
        VStack {
            
            //MARK: - Order Summary
            List {
                Section(header: Text("Items")) {
                    
                    List{
                        Button(action: {
                            quantity += 1
                            print("Hello")
                        }) {
                            Stepper("Quantity: \(quantity)", value: $quantity)
                        }
                    }
                    
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Stepper in List")
            
            
            VStack{
                Text("Total Bill: 100PHP")
                    .fontWeight(.bold)
            }
            
           
            //MARK:
            Text(displayText)
                .font(.largeTitle)
                .padding()
                .frame(maxWidth: .infinity, alignment: .trailing)
            
            HStack {
                VStack(spacing: 10) {
                    
                    ForEach(buttonRows, id: \.self) { row in
                        HStack(spacing: 10) {
                            ForEach(row, id: \.self) { button in
                                Button(action: {
                                    buttonTapped(button)
                                }) {
                                    Text(button)
                                        .font(.title)
                                        .frame(width: buttonWidth(button), height: buttonHeight())
                                        .background(Color.blue)
                                        .foregroundColor(.white)
                                    //.cornerRadius(buttonWidth(button) / 2)
                                        .cornerRadius(10)
                                }
                            }
                        }
                    }
                }
                //Text:
                
                VStack{
    
                    Button {
                        buttonTapped("+")
                    } label: {
                        Text("+")
                            .font(.title)
                            .frame(width: buttonHeight(), height: buttonHeight()*2)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                    }
                    Button {
                        buttonTapped("+")
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .frame(width: buttonHeight(), height: buttonHeight())
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                    }
                
                }
                
                
            }
        }
    }
    
    //MARK: - Methods
    
    func buttonTapped(_ button: String) {
        switch button {
        case "C":
            clear()
        case "=":
            calculate()
        case "+":
            setOperator(button)
        default:
            appendDigit(button)
        }
    }
    
    func appendDigit(_ digit: String) {
        if calculatorState == .calculating {
            clear()
        }
        if currentInput == "0" {
            currentInput = digit
        } else {
            currentInput += digit
        }
        calculatorState = .typing
        displayText = currentInput
    }
    
    func setOperator(_ operatorSymbol: String) {
        if calculatorState == .typing {
            calculate()
        }
        currentOperator = operatorSymbol.first
        calculatorState = .idle
    }
    
    func calculate() {
        if let operand = Double(currentInput) {
            if let `operator` = currentOperator {
                switch `operator` {
                case "+":
                    currentOperand = currentOperand ?? operand
                    currentOperand! += operand
                case "-":
                    currentOperand = currentOperand ?? operand
                    currentOperand! -= operand
                case "x":
                    currentOperand = currentOperand ?? operand
                    currentOperand! *= operand
                case "/":
                    currentOperand = currentOperand ?? operand
                    if operand != 0 {
                        currentOperand! /= operand
                    } else {
                        displayText = "Error"
                        return
                    }
                default:
                    break
                }
            } else {
                currentOperand = operand
            }
            displayText = String(currentOperand!)
            calculatorState = .calculating
        }
    }
    
    func clear() {
        currentInput = ""
        currentOperator = nil
        currentOperand = nil
        displayText = "0"
        calculatorState = .idle
    }
    
    func buttonWidth(_ button: String) -> CGFloat {
        //button == "0" ? 2 * buttonHeight() : buttonHeight()
        
        if button == "+" {
            
        }
        
        return buttonHeight()
        
    }
    
    func buttonHeight() -> CGFloat {
        return 80
    }
    
    func deleteItems(at offsets: IndexSet) {
        quantity -= offsets.count
    }
    
}

struct AddTransactionView_Previews: PreviewProvider {
    static var previews: some View {
        AddTransactionView()
    }
}


