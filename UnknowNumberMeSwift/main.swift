//
//  main.swift
//  UnknowNumberMeSwift
//
//  Created by IOS - Developer  on 06.05.2023.
//

import Foundation

// MARK: - Fixing bags

let randomNumber  = UInt8.random(in: 1...250) //В данной строке мы рандомно задаем значение для сопоставления
print("Enter a number option from 1 to 250 and press return") //print in console
var isWin = false //флаг указатель на результат

repeat { //условия с false использованием
    guard let userNumber = UInt8(readLine() ?? "") else { //если условие false то используем тело условия
        print("You have entered an invalid value! Try again!")
        continue //переходим к новой итерации
    }
    
    //Проверка условия if else {}
    if userNumber < randomNumber {
        print("You have entered a value less than! Try again!")
    } else if userNumber > randomNumber {
        print("You have entered a value greater than! Try again!")
    } else {
        print("You win!")
        isWin = true
    }
} while !isWin //пока, while isWin = true


