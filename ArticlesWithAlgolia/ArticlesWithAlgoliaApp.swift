//
//  ArticlesWithAlgoliaApp.swift
//  ArticlesWithAlgolia
//
//  Created by Tóth Krisztián on 2023. 09. 26..
//

import SwiftUI
import GoogleSignIn

@main
struct ArticlesWithAlgoliaApp: App {
    
    @StateObject var userAuthModel: UserAuthModel = UserAuthModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(userAuthModel)
                .onOpenURL { url in
                          GIDSignIn.sharedInstance.handle(url)
                }
                .onAppear {
                    GIDSignIn.sharedInstance.restorePreviousSignIn { user, error in
                    }
                }
        }
    }
}
