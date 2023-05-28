//
//  ProductDetailView.swift
//  FoodDelivery
//
//  Created by Nikita Nemtsu on 28.05.2023.
//

import SwiftUI

struct ProductDetailView: View {
    
    var product: ProductModel
    
    var body: some View {
        Text("\(product.title)")
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: ProductModel(id: "1",
                                                title: "4Cheese",
                                                imageUrl: "Not found",
                                                price: 100,
                                                descript: "Composition: cheese, olives"))
    }
}
