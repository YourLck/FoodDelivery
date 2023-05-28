//
//  MenuView.swift
//  FoodDelivery
//
//  Created by Nikita Nemtsu on 27.05.2023.
//

import SwiftUI

struct MenuView: View {
    
    let layoutForRecomeds = [GridItem(.adaptive(minimum: screen.width / 2.4 ))]
    let layoutForRolls = [GridItem(.adaptive(minimum: screen.width / 3 ))]
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            Section("Recomends") {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: layoutForRecomeds,
                              alignment: .center,
                              spacing: 35) {
                        ForEach(MenuViewModel.shared.RecomendsProducts, id: \.id) { item in
                            NavigationLink {
                                ProductDetailView(product: item)
                            } label: {
                                ProductCell(product: item)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                }
            }
            
            Section("Rolls") {
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: layoutForRolls,
                              alignment: .center,
                              spacing: 20 ) {
                        ForEach(MenuViewModel.shared.RollsProducts, id: \.id) { item in
                            NavigationLink {
                                ProductDetailView(product: item)
                            } label: {
                                ProductCell(product: item)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                }
            }
        }
//        .navigationBarHidden(true)
        .navigationTitle("Menu")
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
