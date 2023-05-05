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
var number: String? //создали переменную для ввода и проверки

repeat { //пост проверка с оператором управления repeat {} while
    print("Введите число и нажмите Return") //print for console
    number = readLine() //метод для ввода на консоль
    if randomNumber == Int(number!) { //проверка if else
        print("Вы ввели верное число! Поздравляю Вас!")//print for console
    } else if randomNumber > Int(number!)! { //проверка if else
        print("Вы ввели число больше! Попробуйте еще раз!")//print for console
    } else if randomNumber < Int(number!)! { //проверка if else /
        print("Вы ввели число меньше! Попробуйте еще раз!")//print for console
    }
} while randomNumber != Int(number!) //while randomNumber != Int(number!)
