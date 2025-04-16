//
//  Calculator_class.swift
//  Calculator
//
//  Created by Smirnoff on 11.04.2025.
//


final class Calculator {
    
    private let checkerData: Checker
    
    init(checkerData: Checker) {
        self.checkerData = checkerData
    }
    
    func dataEntry(a: Float, b: Float, sign: Character) -> Float? {
        
       if sign == "+" {
            return a + b
        } else if sign == "-" {
            return a - b
        } else if sign == "*" {
            return a * b
        } else if sign == "/" {
            if b == 0 {
                return nil
            } else {
                return a / b
            }
        } else {
            return nil
        }
        
    }
    
    
    func pars(a: String) -> (Float, Character, Float) {
        
        var numberOne = ""
        var operatorOne = Character("!")
        
        var resultOne : Float = 0
        var resultTwo : Float = 0
        
        for char in a {
            if checkerData.isDigit(a: char) {
                numberOne.append(char)
            } else if checkerData.isOperator(a: char) {
                operatorOne = char
                resultOne = Float(numberOne) ?? 0
                let indexOne = a.firstIndex(of: char)!
                let indexAfter = a.index(after: indexOne)
                let numberTwo = a[indexAfter...]
                resultTwo = Float(numberTwo) ?? 0
                break
            }
        }
        return (resultOne, operatorOne, resultTwo)
    }

    func improveString(str: String) -> String {
        
        var resultStr = ""
        let letters = "0123456789+-/*"
        
        for char in str {
            if letters.contains(where: { $0 == char }) {
                resultStr.append(char)
            }
        }
        
        return resultStr
    }
    
}
