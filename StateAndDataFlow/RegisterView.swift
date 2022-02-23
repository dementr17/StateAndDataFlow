//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by brubru on 21.02.2022.
//

import SwiftUI

struct RegisterView: View {
//    @EnvironmentObject var user: UserManager
    @State private var disabled = true
    @State private var name = ""
    @State private var count = 0
    @State private var color: Color = .red
    
    @AppStorage("register") var register: Bool?
    @AppStorage("user") var userName: String?
    
    var body: some View {
        VStack {
            HStack{
                TextField("Enter your name...", text: $name)
                    .multilineTextAlignment(.center)
                    .offset(x: 30, y: 0)
                    .onChange(of: self.name, perform: { value in
                        count = value.count
                        if value.count > 2 {
                            disabled = false
                            color = .green
                        } else {
                            disabled = true
                            color = .red
                        }
                   })
                //текст по центру
                Text("\(count)")
                    .padding(.horizontal)
                    .foregroundColor(color)
            }
                
                Button(action: registerUser) {
                    //при нажатии отрабатывает action
                    HStack {
                        Image(systemName: "checkmark.circle")
                        Text("Ok")
                        //наполняем кнопку, но при жедании это можно реализовать через лейбл
                    }
                }
                .disabled(disabled)
            
        }
    }
}

extension RegisterView {
    private func registerUser() {
        if !name.isEmpty {
            //если имя не пустое, то передаем его в имя объекта и меняем переменную, чтобы отобразить другой экран
//            user.name = name
//            user.isRegister.toggle()
            
            register = true
            userName = name
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
