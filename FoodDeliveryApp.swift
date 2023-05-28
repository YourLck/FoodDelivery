//
//  FoodDeliveryApp.swift
//  FoodDelivery
//
//  Created by Nikita Nemtsu on 26.05.2023.
//

import SwiftUI

let screen = UIScreen.main.bounds

@main
struct FoodDeliveryApp: App {
    var body: some Scene {
        WindowGroup {
            AuthRegView()
        }
    }
}
