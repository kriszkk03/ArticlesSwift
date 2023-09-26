//
//  ContentView.swift
//  ArticlesWithAlgolia
//
//  Created by Tóth Krisztián on 2023. 09. 26..
//

import SwiftUI
import GoogleSignIn
import GoogleSignInSwift

struct ContentView: View {
    @EnvironmentObject var userAuthModel: UserAuthModel

    var body: some View {
        NavigationStack{
            VStack {
            }
            .toolbar {
                if userAuthModel.isLoggedIn == false {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        GoogleSignInButton(action: userAuthModel.handleSignInButton)
                    }
                } else {
                    ToolbarItem(placement: .navigationBarLeading) {
                        ToolbarMenuView()
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: userAuthModel.signOut) {
                            Text("Log out")
                        }
                        .padding(5.0)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
