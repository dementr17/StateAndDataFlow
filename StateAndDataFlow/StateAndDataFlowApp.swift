//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by brubru on 21.02.2022.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
//    @StateObject private var userManager = UserManager()
    @AppStorage("user") var user = ""
    @AppStorage("register") var register = false
    //здесь определяем объект из синглтона (первоисточник)
    
    var body: some Scene {
        WindowGroup {
            //определяем стартовое окно и передаем через метод environmentObject туда объект
           StarterVIew()
//                .environmentObject(userManager)
        }
    }
}
