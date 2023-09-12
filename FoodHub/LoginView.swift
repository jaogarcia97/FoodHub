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
    
    var body: some View {
        NavigationView{
            
        
        ZStack { // Use ZStack to cover the entire screen
            Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1))
            
                    VStack {
                        Image("FoodHubLogo")
                            .resizable()
                            .scaledToFit()
                            .scaleEffect(0.7)
                        
                    
                        TextField("Username", text: $username)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(8)
                        
                        SecureField("Password", text: $password)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(8)
                        
                        Spacer().frame(height: 40)
                        
                        //MARK: - Login
                        
                            NavigationLink {
                                MainTabBarView ()
                                    .navigationBarBackButtonHidden(true)
                            } label: {
                                ZStack{
                                    Text("Login")
                                        .foregroundColor(.white)
                                        .padding(.vertical, 10)
                                        .padding(.horizontal, 40)
                                        .background(
                                            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]),
                                                           startPoint: .leading,
                                                           endPoint: .trailing)
                                        )
                                        .cornerRadius(20)
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

                        Spacer().frame(height: 20)
                        
                        Button{
                            //
                        } label: {
                            HStack{
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
                            
                        }
                        
                        
                    
                    } //VStack End
                    .padding()
                }
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
