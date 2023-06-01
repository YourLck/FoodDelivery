//
//  Position.swift
//  FoodDelivery
//
//  Created by Nikita Nemtsu on 01.06.2023.
//

import Foundation

struct PositionModel: Identifiable {
    
    var id: String
    var product: ProductModel
    var count: Int
    var cost: Int {
        return product.price * self.count
    }
}
