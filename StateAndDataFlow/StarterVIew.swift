//
//  StarterVIew.swift
//  StateAndDataFlow
//
//  Created by brubru on 21.02.2022.
//

import SwiftUI

struct StarterVIew: View {
//    @EnvironmentObject var user: UserManager
    //передаем объект (наследуем)
    
    @AppStorage("register") var register = false
    @AppStorage("user") var userName = ""
    
    var body: some View {
        Group {
            if register {
                ContentView()
            } else {
                RegisterView()
            }
            //альтернатива стеку, чтобы реализовать условие (если переменная объекта тру то отображаем на экране дну структуру ,если фолс то другой
        }
    }
}

struct StarterVIew_Previews: PreviewProvider {
    static var previews: some View {
        StarterVIew()
//            .environmentObject(UserManager())
        //необходимо определить область отображения
    }
}
