//
//  main.swift
//  Calculator
//
//  Created by Smirnoff on 07.02.2025.
//

import Foundation

func data_entry(a: Int, b: Int, sign: String) -> Int {
    var a = readLine()
    var b = readLine()
    var sign = readLine()
    
    
    
    if sign == "+" {
        return a + b
    } else if sign == "-" {
        return a - b
    } else if sign == "*" {
        return a * b
    } else if sign == "/" {
        return a / b
    }
    
}
