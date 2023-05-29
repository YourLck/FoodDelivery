//
//  ProductDetailView.swift
//  FoodDelivery
//
//  Created by Nikita Nemtsu on 28.05.2023.
//

import SwiftUI

struct ProductDetailView: View {
    
    var viewModel: ProductDetailViewModel
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Image("pizza4Cheese")
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: 260)
            
            HStack {
                Text("\(viewModel.product.title)")
                    .font(.title2.bold())
                Spacer()
                Text("\(viewModel.product.price) $")
                    .font(.title2)
            }
            .padding(.horizontal, 20)
            
            Text("Weight: \(viewModel.product.weight)")
                .padding(.horizontal, 13)
                .padding(.vertical, 4)
                .font(.title2)
            
            Text("\(viewModel.product.descript)")
                .padding(.horizontal, 13)
                .padding(.vertical, 4)
                .font(.title2)
            
                Spacer()
        }
//        .ignoresSafeArea()
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(viewModel: ProductDetailViewModel(product: ProductModel(
                                                          id: "1",
                                                          title: "4Cheese",
                                                          imageUrl: "Not found",
                                                          price: 120,
                                                          weight: "450 g",
                                                          descript: "Composition: cheese, olives")))
                                                          
        
        

    }
}
