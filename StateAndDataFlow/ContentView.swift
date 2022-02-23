//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by brubru on 21.02.2022.
//

import SwiftUI

struct ContentView: View {
//    @EnvironmentObject var user: UserManager
    //переменная принимающая объект @StateObject типа UserManager
    @StateObject private var timer = TimeCounter()
    // создаем объект класса
    @AppStorage("user") var userName: String?
    @AppStorage("register") var register: Bool?
    
    var body: some View {
        VStack(spacing: 40) {
//            Text("Hi, \(user.name)")
            Text("Hi, \(userName ?? "")")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            //сдвигаем вниз на 100
            Text("\(timer.counter)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Spacer()
            ButtonView(timer: timer)
            Spacer()
            Button(action: logOut) {
                Text("LogOut")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            .frame(width: 200, height: 60)
            .background(Color.blue)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 4)
            )
            .padding()
        }
    }
    
    private func logOut() {
        userName = ""
        register = false
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


