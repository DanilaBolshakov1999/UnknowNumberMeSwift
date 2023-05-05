//
//  main.swift
//  UnknowNumberMeSwift
//
//  Created by IOS - Developer  on 06.05.2023.
//

import Foundation

// MARK: - Constants

let randomNumber = Int.random(in: 1...250) //задаем рандомный диапазон значений
print("Введите число от 1 до 250!") //print for console
var number: String?

repeat {
    print("Введите число и нажмите Return")
    number = readLine()
    if randomNumber == Int(number!) {
        print("Вы ввели верное число! Поздравляю Вас!")
    } else if randomNumber > Int(number!)! {
        print("Вы ввели число больше! Попробуйте еще раз!")
    } else if randomNumber < Int(number!)! {
        print("Вы ввели число меньше! Попробуйте еще раз!")
    }
} while randomNumber != Int(number!)
