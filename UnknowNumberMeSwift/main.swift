//
//  main.swift
//  UnknowNumberMeSwift
//
//  Created by IOS - Developer  on 06.05.2023.
//

import Foundation

var isDoNextRound = false // переменная для определения, делать ли следующий раунд в игре

repeat { //сначала делает потом проверяет
    doGameRound() // стартуем очередной раунд игры
    print("Продолжим играть? Yes, Y, Y") // проверка проведения следующего раунда
    
    if let answerNextRound = readLine(), ["Yes", "Y", "y"].contains(answerNextRound) { //проверка на верный ввод и продолжить игру
        isDoNextRound = true
    }
    
} while isDoNextRound == true

func doGameRound() { //func для старата очередного раунда
    
    let randomNumbersArray: [UInt8] = Array(1...50) // генерируется случайное число для консольной игры диапазон
    let randomNumber: UInt8 = randomNumbersArray.randomElement()! // генерируется рандомное число в randomNumbersArray.randomElement()!
    print("Компьютер случайный образом загадал число в диапазоне от \(randomNumbersArray.first!) до \(randomNumbersArray.last!). Вам требуется отгадать его.")//print in console
    
    var isCorrect = false  // указатель на корректный ответ
    
    repeat { //сначала делает потом проверяет
        print("Введите ваш вариант и нажмите Enter") //print in console
        let userNumberFromConsole = readLine() //ввод на консоль значения
        
        // проверка корректности ответа пользователя
        // тут обрабатывается ввод букв вместо цифр и пустой строки
        guard let tmpUserNumber = userNumberFromConsole, //присвоить новому параметру введенное значение на консоль
                let userNumber = UInt8(tmpUserNumber) else { //проверка на false если ввели не корректное значение повторить попытку
            print("Вы ввели некорректное число") //print in console
            continue //повтор итерации еще раз
        }

        if (userNumber == randomNumber) { // проверка введенного ответа и загаданного числа
            print("Вы угадали!") //print in console
            isCorrect = true //указатель на корректный ответ == верный
        } else if (userNumber < randomNumber) { //проверка на указатель на ответ < userNumber < randomNumber
            print("Ваш вариант МЕНЬШЕ загаданного числа") //print in console
        } else if (userNumber > randomNumber) { //проверка на указатель на ответ > userNumber > randomNumber
            print("Ваш вариант БОЛЬШЕ загаданного числа") //print in console
        }
    } while !isCorrect //пока у нас указатель на корректный ответ !isCorrect
}
