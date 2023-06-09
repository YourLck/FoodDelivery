//
//  ProductDetailView.swift
//  FoodDelivery
//
//  Created by Nikita Nemtsu on 28.05.2023.
//

import SwiftUI

struct ProductDetailView: View {
    
    var viewModel: ProductDetailViewModel
        
    @State var size = "Medium(30)"
    @State var weight = "500 g"
    @State var countProduct = 1
    
    @Environment(\.presentationMode) var presentationMode
    
        var body: some View {
            VStack {
                
                VStack(alignment: .leading) {
                    Image("pizza4Cheese")
                        .resizable()
                        .frame(maxWidth: .infinity, maxHeight: 260)
                    
                    HStack {
                        Text("\(viewModel.product.title)")
                            .font(.title2.bold())
                        Spacer()
                        Text("\(viewModel.selectionSize(size: size )) $")
                            .font(.title2)
                    }
                    .padding(.horizontal, 20)
                    
                    Text("Weight: \(viewModel.selectionWeight(size: size))")
                        .padding(.horizontal, 13)
                        .padding(.vertical, 4)
                        .font(.title2)
                    
                    Text("\(viewModel.product.descript)")
                        .padding(.horizontal, 13)
                        .padding(.vertical, 4)
                        .font(.title2)
                    //                Spacer()
                    
                    Picker("Size" , selection: $size) {
                        ForEach(viewModel.sizes, id: \.self ) { item in
                            Text(item)
                        }
                    }
                    .pickerStyle(.segmented)
                    .padding()
                }
                
                HStack {
                    Stepper("Quantity", value: $countProduct, in: 1...10)
                        .padding()
                    
                    Text("\(self.countProduct)")
                        .padding(.leading, 22)
                }
                .padding(.horizontal)
                Spacer()
                
                Button {
                    var position = PositionModel(id: UUID().uuidString ,
                                                 product: viewModel.product,
                                                 count: self.countProduct)
                    position.product.price = viewModel.selectionSize(size: size)

                    CartViewModel.shared.addPosition(position)
                    presentationMode.wrappedValue.dismiss()
                    
                } label: {
                    Text("Add to cart!")
                        .padding()
                        .padding(.horizontal, 20)
                        .font(.title.bold())
                        .background(Color("roseRed"))
                        .foregroundColor(Color.black)
                        .cornerRadius(20)
                }
                //        .ignoresSafeArea()
            }
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
