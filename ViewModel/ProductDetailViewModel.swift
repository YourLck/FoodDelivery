//
//  ProductDetailViewModel.swift
//  FoodDelivery
//
//  Created by Nikita Nemtsu on 29.05.2023.
//

import Foundation

class ProductDetailViewModel: ObservableObject {
     
   @Published  var product: ProductModel
//    = ProductModel(id: "1",
//                                                      title: "4Cheese",
//                                                      imageUrl: "Not found",
//                                                      price: 100,
//                                                      weight: "450 g",
//                                                      descript: "Composition: cheese, olives")
    init(product: ProductModel) {
        self.product = product
    }
    
} 
