//
//  ProductDetailViewModel.swift
//  FoodDelivery
//
//  Created by Nikita Nemtsu on 29.05.2023.
//

import Foundation

class ProductDetailViewModel: ObservableObject {
     
    @Published var product: ProductModel
    @Published var sizes = ["Small(20)", "Medium(30)", "Big(45)"]
    @Published var weight = ["250 g", "500 g", "750 g"]
    @Published var countProduct = 0

    
    init(product: ProductModel) {
        self.product = product
    }
    
    func selectionSize(size: String) -> Int {
        switch size {
        case "Small(20)" : return Int(Double(product.price) * 0.8)
        case "Medium(30)" : return Int(product.price)
        case "Big(45)" : return Int(Double(product.price) * 1.4)
            
        default:
            return 0
        }
    }
    
    func selectionWeight(size: String) -> String {
        switch size {
        case "Small(20)" : return "250 g"
        case "Medium(30)" : return "500 g"
        case "Big(45)" : return "750 g"

        default:
            return ""
        }
    }
    
} 
