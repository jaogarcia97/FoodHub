//
//  ContentView.swift
//  FoodHub
//
//  Created by Jao Garcia on 8/19/23.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
    
        
        NavigationStack {
            ZStack { // Use ZStack to cover the entire screen
                Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1))
                
                        VStack {
                            
                            Spacer()
                            Image("FoodHubLogo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200, height: 200)
                            
                        
                            TextField("Username", text: $username)
                                .font(.subheadline)
                                .padding(12)
                                .background(Color(.systemGray6))
                                .cornerRadius(10)
                                .padding(.horizontal, 25)
                            
                            SecureField("Password", text: $password)
                                .font(.subheadline)
                                .padding(12)
                                .background(Color(.systemGray6))
                                .cornerRadius(10)
                                .padding(.horizontal, 25)
                            
                            Spacer().frame(height: 40)
                            
                            //MARK: - Login
                                NavigationLink {
                                    MainTabBarView ()
                                        .navigationBarBackButtonHidden()
                                } label: {
                                    ZStack{
                                        Text("Login")
                                            .foregroundColor(.white)
                                            .padding(.vertical, 10)
                                            .padding(.horizontal, 40)
                                            .frame(width: 360, height: 44)
                                            .background(
                                                LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]),
                                                               startPoint: .leading,
                                                               endPoint: .trailing)
                                            )
                                            .cornerRadius(10)
                                    }
                                }
                            
                            Spacer().frame(height: 20)
                            
                            
                            //MARK: - Forgot Password
                            Button {
                                
                            } label: {
                                Text("Forgot password?")
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                    .bold()
                            }

                            Spacer()
                            
                            //Sign Up
                            NavigationLink {
                                RegistrationView()
                                    .navigationBarBackButtonHidden()
                            } label: {
                                HStack(spacing: 3){
                                    Text("Don't have an account?")
                                        .font(.subheadline)
                                        .fontWeight(.regular)
                                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                    
                                    Text("Register Here")
                                        .font(.subheadline)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .bold()
                                }
                                .font(.footnote)

                            }
                            .padding(.bottom, 50)
                        
                        } //VStack End
                        
                    }
                    .edgesIgnoringSafeArea(.all)
            
            
            
        }
//        .navigationViewStyle(StackNavigationViewStyle())
        
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
