//
//  TimeCounter.swift
//  StateAndDataFlow
//
//  Created by brubru on 21.02.2022.
//

import Foundation
import Combine

class TimeCounter: ObservableObject {
    let objectWillChange = PassthroughSubject<TimeCounter, Never>()
    
    var counter = 3
    //начальное значение счетчика
    var timer: Timer?
    //определем пременную таймер
    var buttonTitle = "Start"
    //имя кнопки в начале
    
    func startTimer() {
        if counter > 0 {
            //пока значение таймера не равно нулю
            timer = Timer.scheduledTimer(
                timeInterval: 1,
                target: self,
                selector: #selector(updateCounter),
                userInfo: nil,
                repeats: true
                //инициализируем таймер параметрами: интревал времени обновления, где он определен, метод срабатывания, инфа ... и повторы
            )
        }
        buttonDidTapped()
        //метод работы с кнопкой
    }
    
    @objc private func updateCounter() {
        //метод для таймера @objc так как вызывается через селектор
        if counter > 0 {
            counter -= 1
            //пока больше нуля уменьшаем на один
        } else {
            //когда таймер станет равно 0, остановим его и поменяем кнопку
            killTimer()
            buttonTitle = "Reset"
        }
        
        objectWillChange.send(self)
        //?????
    }
    
    private func killTimer() {
        //метод удаления таймера
        timer?.invalidate()
        timer = nil
    }
    
    private func buttonDidTapped() {
        //если имя кнопки ресет, то счетчик = 3 название кнопки старт
        if buttonTitle == "Reset" {
            counter = 3
            buttonTitle = "Start"
        } else {
            buttonTitle = "Wait..."
            //пока кнопка не равна ресет после нажатия будет называться так
        }
        
        objectWillChange.send(self)
        //?????
    }
}
