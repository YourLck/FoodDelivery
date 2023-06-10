//
//  ContentView.swift
//  FoodDelivery
//
//  Created by Nikita Nemtsu on 26.05.2023.
//

import SwiftUI

struct AuthRegView: View {
    
    @State private var isAuth = true
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var isTabViewShow = false
    @State private var isShowAlert = false
    @State private var alertMessage = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text(isAuth ? "Авторизация" : "Регистрация")
                .padding(isAuth ? 16 : 24)
                .padding(.horizontal, 40)
                .font(.title2.bold())
                .background(Color("transparence"))
                .cornerRadius(isAuth ? 40 : 60)
            
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
                
                if !isAuth {
                    SecureField("Повторите пароль", text: $confirmPassword)
                        .padding()
                        .background(Color("transparence"))
                        .cornerRadius(15)
                        .padding(8)
                        .padding(.horizontal, 12)
                }
                
                Button {
                    if isAuth {
                        print("Авторизация")
                        AuthService.shared.signIn(email: self.email,
                                                  password: self.password) { result in
                            switch result {
                                
                            case .success(_):
                                isTabViewShow.toggle()
                                
                            case .failure(let error):
                                alertMessage = "Authorization error\(error.localizedDescription)"
                                isShowAlert.toggle()
                            }
                        }
//                        isTabViewShow.toggle()
                    } else {
                        print("Регистрация")
                        guard password == confirmPassword else {
                            self.alertMessage = "Passwords don't match!"
                            self.isShowAlert.toggle()
                            return
                        }
                        AuthService.shared.signUp(email: self.email,
                                                  password: self.password) { result in
                            switch result {
                            
                            case .success(let user):
                                alertMessage = "You have registered an email \(user.email!)!"
// Fix the optionals
                                self.isShowAlert.toggle()
                                self.email = ""
                                self.password = ""
                                self.confirmPassword = ""
                                self.isAuth.toggle()
                                
                            case .failure(let error):
                                alertMessage = "Registration error! \(error.localizedDescription)"
                                self.isShowAlert.toggle()
                            }
                        }
//                        print("Регистрация")
                    }
                } label: {
                    Text(isAuth ? "Войти" : "Зарегистрироваться")
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
                    isAuth.toggle()
                } label: {
                    Text(isAuth ? "Регистрируйся" : "Уже зарегистрирован")
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
            .padding(15)
            .alert(alertMessage,
                   isPresented: $isShowAlert) {
                Button { } label: {
                    Text("OK")
                }
            }
            
        } .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("spaceBackgroundEdit")
            .ignoresSafeArea()
            .blur(radius: isAuth ? 0 : 3))
        .animation(Animation.easeOut(duration: 0.4), value: isAuth)
        .fullScreenCover(isPresented: $isTabViewShow) {
            
            let mainTabBarViewModel = MainTabBarViewModel(user: AuthService.shared.currentUser!)
// Fix the optionals
            MainTabBar(viewModel: mainTabBarViewModel)
        }
    }
}

struct AuthRegView_Previews: PreviewProvider {
    static var previews: some View {
        AuthRegView()
    }
}
