//
//  ContentView.swift
//  FoodDelivery
//
//  Created by Nikita Nemtsu on 26.05.2023.
//

import SwiftUI


struct ContentView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Авторизация")
                .padding()
                .padding(.horizontal, 40)
                .font(.title2.bold())
                .background(Color("transparence"))
                .cornerRadius(50)
            
            VStack {
                TextField("Введите email", text: $email)
                    .padding()
                    .background(Color("transparence"))
                    .cornerRadius(15)
                    .padding(8)
                    .padding(.horizontal, 12)
                
                
                SecureField("Введите пароль", text: $password)
                    .padding()
                    .background(Color("transparence"))
                    .cornerRadius(15)
                    .padding(8)
                    .padding(.horizontal, 12)
                
                Button {
                    print("Войти")
                } label: {
                    Text("Войти")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .font(.title2.bold())
                    .foregroundColor(.black)
                    .background(LinearGradient(
                        colors: [Color("yellow"), Color("roseRed")],
                        startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(50)
                    .padding(.horizontal, 20)
                }
                
                Button {
                    print("Регистрируйся")
                } label: {
                    Text("Регистрируйся")
                    .padding(.horizontal)
                    .font(.title2.bold())
                    .foregroundColor(Color.brown)
                    .cornerRadius(50)
                    .padding(.horizontal, 40)
                }
            }
            
            .padding()
            .padding(.top, 15)
            .background(Color("transparence"))
            .cornerRadius(25)
            .padding(30)
            
        } .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("spaceBackgroundEdit").ignoresSafeArea())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
