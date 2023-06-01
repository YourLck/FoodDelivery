//
//  MainTabBar.swift
//  FoodDelivery
//
//  Created by Nikita Nemtsu on 27.05.2023.
//

import SwiftUI

struct MainTabBar: View {
    var body: some View {
        
        TabView {
            
            NavigationView {
                MenuView()
            } 
                .tabItem {
                    VStack {
                        Image(systemName: "fork.knife.circle.fill")
                        Text("Menu")
                    }
                }
            
            CartView(viewModel: CartViewModel.shared )
                .tabItem {
                    VStack {
                        Image(systemName: "cart.fill")
                        Text("Cart")
                    }
                }
            
            ProfileView()
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                        Text("Profile")
                    }
                }
        }
    }
}

struct MainTabBar_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBar()
    }
}
