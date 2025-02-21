//
//  main.swift
//  Calculator
//
//  Created by Smirnoff on 07.02.2025.
//

import Foundation



func dataEntry(a: Int, b: Int, sign: String) -> Int? {
    
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
    var a = Int(readLine() ?? "0")
    var b = Int(readLine() ?? "0")
    var sign = readLine()
    
    if let aLast = a, let bLast = b, let signLast = sign {
        let result = dataEntry(a: aLast, b: bLast, sign: signLast)
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
