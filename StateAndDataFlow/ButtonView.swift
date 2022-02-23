//
//  ButtonView.swift
//  StateAndDataFlow
//
//  Created by Дмитрий Чепанов on 23.02.2022.
//
import SwiftUI

struct ButtonView: View {
    @ObservedObject var timer: TimeCounter
//    @Binding var timer: Any?
    
    var body: some View {
        Button(action: timer.startTimer) {
            //при нажатии кнопки реализуется метод из класса
            Text("\(timer.buttonTitle)")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
                .background(Color.red)
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.black, lineWidth: 4)
        )
    }
}