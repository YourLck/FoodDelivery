//
//  CartView.swift
//  FoodDelivery
//
//  Created by Nikita Nemtsu on 27.05.2023.
//

import SwiftUI

struct CartView: View {
    
    @StateObject var viewModel: CartViewModel
    
    var body: some View {
        
        VStack {
            List(viewModel.positions) { position in
                PositionCell(position: position)
//                    .swipeActions {
//                        Button {
//                            viewModel.positions.removeAll { pos in
//                                pos.id == position.id
//                            }
//                        } label: {
//                            Text("Dell")
//                        }.tint(.red)
//                    }
            }
                    .listStyle(.plain)
                    .navigationTitle("Cart")
                
                HStack {
                    Text("Full price")
                        .font(.title2.bold())
                    Spacer()
                    Text("\(self.viewModel.cost) $")
                        .font(.title2.bold())
                }
                .padding()
                
                HStack(spacing: 24) {
                    Button {
                        print("Cancel")
                    } label: {
                        Text("Cancel")
                        //                        .font(.body)
                        //                        .font(.title3.bold())
                            .fontWeight(.bold)
                            .padding()
                            .foregroundColor(.black)
                            .background(.clear)
                            .cornerRadius(28)
                    }
                    
                    Button {
                        print("Buy")
                    } label: {
                        Text("Buy")
                            .font(.body)
                            .font(.title3.bold())
                            .fontWeight(.bold)
                            .padding()
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .background(.red)
                            .cornerRadius(17)
                    }
                }
                .padding()
            }
        }
    }

    struct CartView_Previews: PreviewProvider {
        static var previews: some View {
            CartView(viewModel: CartViewModel.shared)
        }
    }
    

