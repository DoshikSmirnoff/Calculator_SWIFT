//
//  main.swift
//  Calculator
//
//  Created by Smirnoff on 07.02.2025.
//

import Foundation

let checker = Checker()

var calculator1 = Calculator(checkerData: checker)

while true {
    let a = readLine()
    
    if let aLast = a {
        let improveStr = calculator1.improveString(str: aLast)
        let resultOfPars = calculator1.pars(a: improveStr)
        let result = calculator1.dataEntry(a: resultOfPars.0, b: resultOfPars.2, sign: resultOfPars.1)
        if let resultLast = result {
            print("Ваш результат равен: \(resultLast)!")
        } else {
            print("Не выполнимый запрос!")
        }
    }
    
    
    print("Если хотите продолжить, введите Yes, если хотите завершить - No")
    
    let response = readLine()
    
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
