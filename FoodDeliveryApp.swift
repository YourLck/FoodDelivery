//
//  FoodDeliveryApp.swift
//  FoodDelivery
//
//  Created by Nikita Nemtsu on 26.05.2023.
//

import SwiftUI
import Firebase

let screen = UIScreen.main.bounds

@main
struct FoodDeliveryApp: App {
    var body: some Scene {
        WindowGroup {
            AuthRegView()
        }
    }
    
    class AppDelegate: NSObject, UIApplicationDelegate {
        
        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
            FirebaseApp.configure()
            
            return true
        }
    }
    
    
}
