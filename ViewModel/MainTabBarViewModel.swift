//
//  MainTabBarViewModel.swift
//  FoodDelivery
//
//  Created by Nikita Nemtsu on 09.06.2023.
//

import Foundation
import FirebaseAuth

class MainTabBarViewModel: ObservableObject {
    
    @Published var user: User
    
    init(user: User) {
        self.user = user
    }
}
