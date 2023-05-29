//
//  MenuViewModel.swift
//  FoodDelivery
//
//  Created by Nikita Nemtsu on 28.05.2023.
//

import Foundation

class MenuViewModel: ObservableObject {
    
    static let shared = MenuViewModel()
    
    var RecomendsProducts = [ProductModel(id: "1",
                                 title: "4Cheese",
                                 imageUrl: "Not found",
                                 price: 100,
                                 weight: "450 g",
                                 descript: "Composition: cheese, olives"),
                    
                    ProductModel(id: "2",
                                 title: "Margarita",
                                 imageUrl: "Not found",
                                 price: 120,
                                 weight: "450 g",
                                 descript: "Composition: cheese, olives"),
                    
                    ProductModel(id: "3",
                                 title: "Diablo",
                                 imageUrl: "Not found",
                                 price: 110,
                                 weight: "450 g",
                                 descript: "Composition: cheese, olives"),
                    
                    ProductModel(id: "4Beefs",
                                 title: "4Cheese",
                                 imageUrl: "Not found",
                                 price: 150,
                                 weight: "450 g",
                                 descript: "Composition: cheese, olives")]
    
    var RollsProducts = [ProductModel(id: "1",
                                 title: "4Cheese",
                                 imageUrl: "Not found",
                                 price: 100,
                                 weight: "450 g",
                                 descript: "Composition: cheese, olives"),
                    
                    ProductModel(id: "2",
                                 title: "Margarita",
                                 imageUrl: "Not found",
                                 price: 120,
                                 weight: "450 g",
                                 descript: "Composition: cheese, olives"),
                    
                    ProductModel(id: "3",
                                 title: "Diablo",
                                 imageUrl: "Not found",
                                 price: 110,
                                 weight: "450 g",
                                 descript: "Composition: cheese, olives"),
                    
                    ProductModel(id: "4Beefs",
                                 title: "4Cheese",
                                 imageUrl: "Not found",
                                 price: 150,
                                 weight: "450 g",
                                 descript: "Composition: cheese, olives")]
    
}


