//
//  UserModel.swift
//  FoodDelivery
//
//  Created by Nikita Nemtsu on 10.06.2023.
//

import Foundation

struct UserModel: Identifiable {
    
    var id: String = UUID().uuidString
    var name: String
    var phone: Int
    
    var representation: [String : Any] {
        var repres = [String : Any]()
        repres["id"] = self.id
        repres["name"] = self.name
        repres["phone"] = self.phone
        return repres
    }
}
