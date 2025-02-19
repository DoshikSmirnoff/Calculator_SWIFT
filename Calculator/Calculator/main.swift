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
    
    if let int_a = a and && let int_b = b {
        print(int_a)
        print(int_b)
    }
    if var int_a = Int(a) && int_b = Int(b) {
        
    }
    
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

import Foundation

let line = readLine()
if let newLine = line {
 print(newLine)
 if let int = Int(newLine) {
  print(int)
 }
}
