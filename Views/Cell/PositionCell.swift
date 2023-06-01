//
//  PositionCell.swift
//  FoodDelivery
//
//  Created by Nikita Nemtsu on 01.06.2023.
//

import SwiftUI

struct PositionCell: View {
    
    var position: PositionModel
    
    var body: some View {
        HStack{
            Text(position.product.title)
                .fontWeight(.bold)
            
            Spacer()
            
            Text("\(position.count) units ")
            
            Text("\(position.cost) $")
                .frame(width: 95, alignment: .trailing)
            
        }
        .padding()
    }
}

struct PositionCell_Previews: PreviewProvider {
    static var previews: some View {
        PositionCell(
            position: PositionModel(id: UUID().uuidString,
                                    product: ProductModel(id: UUID().uuidString,
                                                          title: "Diablo",
                                                          imageUrl: "pizza4Cheese",
                                                          price: 100,
                                                          weight: "450 g",
                                                          descript: "Not found"),
                                    count: 3))
    }
}
