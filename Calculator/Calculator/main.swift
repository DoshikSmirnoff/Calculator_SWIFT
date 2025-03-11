//
//  main.swift
//  Calculator
//
//  Created by Smirnoff on 07.02.2025.
//

import Foundation



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
//
//import Foundation
//
//let line = readLine()
//if let newLine = line {
// print(newLine)
// if let int = Int(newLine) {
//  print(int)
// }
//}

while true {
    var a = readLine()
    
    if let aLast = a {
        let resultOfPars = pars(a: aLast)
        let result = dataEntry(a: resultOfPars.0, b: resultOfPars.2, sign: resultOfPars.1)
        if let resultLast = result {
            print("Ваш результат равен: \(resultLast)!")
        } else {
            print("Не выполнимый запрос!")
        }
    }
    
    
    print("Если хотите продолжить, введите Yes, если хотите завершить - No")
    
    var response = readLine()
    
    if let responseLast = response {
        if responseLast == "Yes" {
            continue
        } else if responseLast == "No" {
            break
        } else {
            print("Неверный ответ!")
        }
    }
}

// "12+13"

func isDigit(a: Character) -> Bool {
    let numbers = "0123456789"
    
    for number in numbers {
        if number == a {
            return true
        }
    }
    return false
}

func isOperator(a: Character) -> Bool {
    let allOperators = "+-//*"
    
    for oper in allOperators {
        if oper == a {
            return true
        }
    }
    return false
}

func pars(a: String) -> (Float, Character, Float) {
    
    var numberOne = ""
    var operatorOne = Character("!")
    var numberTwo = ""
    
    var resultOne : Float = 0
    var resultTwo : Float = 0
    
    for char in a {
        if isDigit(a: char) {
            numberOne.append(char)
        } else if isOperator(a: char) {
            operatorOne = char
            resultOne = Float(numberOne) ?? 0
            var indexOne = a.firstIndex(of: char)!
            var indexAfter = a.index(after: indexOne)
            let numberTwo = a[indexAfter...]
            resultTwo = Float(numberTwo) ?? 0
            break
        }
    }
    return (resultOne, operatorOne, resultTwo)
}
