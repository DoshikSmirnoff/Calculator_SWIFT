//
//  Checker.swift
//  Calculator
//
//  Created by Smirnoff on 11.04.2025.
//

/// Класс, который занимается проверкой вводимых данных на соответствие допустимым символам
class Checker {
    
    /// Метод проверяет, является ли символ цифрой
    func isDigit(a: Character) -> Bool {
        let numbers = "0123456789"
        
        for number in numbers {
            if number == a {
                return true
            }
        }
        return false
    }
    
    /// Метод проверяет, является ли символ математическим оператором
    func isOperator(a: Character) -> Bool {
        let allOperators = "+-//*"
        
        for oper in allOperators {
            if oper == a {
                return true
            }
        }
        return false
    }
}
