//
//  ProductCell.swift
//  FoodDelivery
//
//  Created by Nikita Nemtsu on 28.05.2023.
//

import SwiftUI

struct ProductCell: View {
    
    var product: ProductModel
    
    var body: some View {
        
        VStack {
            Image("rolls")
                .resizable()
                .scaledToFill()
//                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: screen.width * 0.45)
                .clipped()
                .cornerRadius(16)
            HStack {
                Text(product.title)
                    Spacer()
//                    .font()
                Text("\(product.price) $")
            }
            .padding(.horizontal, 4)
            .padding(.bottom, 6)
            .padding(.top, 5)
        } .frame(width: screen.width * 0.4,
                 height: screen.height * 0.25,
                 alignment: .center)
        .shadow(radius: 3)

    }
}

struct ProductCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductCell(product: ProductModel(id: "1",
                                     title: "4Cheese",
                                     imageUrl: "Not found",
                                     price: 100,
                                     descript: "Composition: cheese, olives"))
    }
}
