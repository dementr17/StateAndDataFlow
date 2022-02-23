//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by brubru on 21.02.2022.
//

import SwiftUI

struct RegisterView: View {
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
                Text("\(count)")
                    .padding(.horizontal)
                    .foregroundColor(color)
            }
                
                Button(action: registerUser) {
                    HStack {
                        Image(systemName: "checkmark.circle")
                        Text("Ok")
                    }
                }
                .disabled(disabled)
            
        }
    }
}

extension RegisterView {
    private func registerUser() {
        if !name.isEmpty {
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
