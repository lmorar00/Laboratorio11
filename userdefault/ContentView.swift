//
//  ContentView.swift
//  userdefault
//
//  Created by Luis Mora Rivas on 9/10/21.
//

import SwiftUI




struct ContentView: View {
    @AppStorage("status") var logged: Bool = false
    var body: some View {
        NavigationView {
            if logged {
                VStack {
                    Text ("User Logged In")
                        .navigationTitle("Home")
                        .navigationBarHidden(false)
                        .preferredColorScheme(.light)
                    
                    Button(action: {
                        logged = false
                    }, label: {
                        Text("Logout")
                    })
                }
            } else {
                LoginView()
                    .preferredColorScheme(.light)
                    .navigationBarHidden(true)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
