//
//  StarterVIew.swift
//  StateAndDataFlow
//
//  Created by brubru on 21.02.2022.
//

import SwiftUI

struct StarterVIew: View {
    
    @AppStorage("register") var register = false
    @AppStorage("user") var userName = ""
    
    var body: some View {
        Group {
            if register {
                ContentView()
            } else {
                RegisterView()
            }
        }
    }
}

struct StarterVIew_Previews: PreviewProvider {
    static var previews: some View {
        StarterVIew()
    }
}
