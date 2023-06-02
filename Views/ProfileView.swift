//
//  ProfileView.swift
//  FoodDelivery
//
//  Created by Nikita Nemtsu on 27.05.2023.
//

import SwiftUI

struct ProfileView: View {
    
    @State var isPhotoAlertPresented = false
    @State var isQuitAlertPresented = false
    @State var isAuthViewPresented = false
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            HStack(spacing: 12) {
                Image("figure.wave.circle")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .padding()
                    .background(Color(.lightGray))
                    .clipShape(Circle())
                    .onTapGesture {
                        isPhotoAlertPresented.toggle()
                    }
                    .confirmationDialog("Attach photo", isPresented: $isPhotoAlertPresented) {
                        
                        Button {
                            print("Library")
                        } label: {
                            Text("Library")
                        }
                        Button {
                            print("Camera")
                        } label: {
                            Text("Camera")
                        }
                    }
                
                VStack(alignment: .leading, spacing: 12) {
                    Text("Profile Profile")
                        .font(.title2.bold())
                    Text("+37312345678")
                        .font(.title3.bold())
                }
            }
            
            List {
                Text("Your orders will be here!")
            }
            .listStyle(.plain)
            
            Button {
                isQuitAlertPresented.toggle()
            } label: {
                Text("Exit")
                    .padding()
                    .padding(.horizontal, 30)
                    .background(Color(.red))
                    .cornerRadius(20)
                    .foregroundColor(.white)
                    .font(.title3)
            }
            .padding()
            
            .confirmationDialog("Do you want to go out?", isPresented: $isQuitAlertPresented) {
                
                Button {
                    isAuthViewPresented.toggle()
                } label: {
                    Text("Yes")
                }
            }
            .fullScreenCover(isPresented: $isAuthViewPresented, onDismiss: nil) {
                AuthRegView()
            }
        }
        .padding()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
