//
//  FoodDeliveryApp.swift
//  FoodDelivery
//
//  Created by Nikita Nemtsu on 26.05.2023.
//

import SwiftUI
import Firebase
import FirebaseAuth

let screen = UIScreen.main.bounds

@main
struct FoodDeliveryApp: App {
    
    @UIApplicationDelegateAdaptor private var AppDelegate: AppDelegate
    
    var body: some Scene {
        WindowGroup {
            AuthRegView()
        }
    }
    
    class AppDelegate: NSObject, UIApplicationDelegate {
        
        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
            FirebaseApp.configure()
            print("AppDelegate")
            
            return true
        }
    }
}
