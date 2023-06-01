//
//  CartViewModel.swift
//  FoodDelivery
//
//  Created by Nikita Nemtsu on 01.06.2023.
//

import Foundation

class CartViewModel: ObservableObject {
    
    static let shared = CartViewModel()
    
    private init() {}
    
   @Published var positions = [PositionModel]()
    
    var cost: Int {
        var sum = 0
        
        for position in positions {
            sum += position.cost
        }
        return sum
    }
    
    func addPosition(_ position: PositionModel) {
        self.positions.append(position)
    }
}
