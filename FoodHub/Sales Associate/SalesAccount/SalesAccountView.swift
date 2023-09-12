//
//  SalesAccountView.swift
//  FoodHub
//
//  Created by Jao Garcia on 9/11/23.
//

import SwiftUI

struct SalesAccountView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var branchDesignation = ""
    @State private var cashierLocation = ""
    @State private var birthdate = Date()
    @State private var shouldSendNewsLetter = false
    

    var body: some View {
        
        VStack {
            NavigationView{
                
                Form {
                    
                    
                    HStack{
                        Text(User.MOCK_USER.initials)
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 72, height: 72)
                            .background(Color(.systemGray3))
                            .clipShape(Circle())
                        
                        VStack (alignment: .leading, spacing: 4){
                            Text(User.MOCK_USER.fullname)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .padding(.top, 4)
                            Text(User.MOCK_USER.email)
                                .font(.footnote)
                                .foregroundColor(.gray)
                        }
                    }
                    
                    Section (header: Text("Personal information")) {
                        TextField("First Name", text: $firstName)
                        TextField("Last Name", text: $lastName)

                    }
                    
                    Section (header: Text("Branch information")) {
                        TextField("Branch designation", text: $branchDesignation)
                        TextField("Cashier Location", text: $cashierLocation)
                    }
                    Section(header: Text("Version")){
                        Text("Version 1.0.0")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    
                    Button {
                        print("Logout")
                    } label: {
                        Text("Logout")
                            .foregroundColor(.red)
                    }
                }
                .navigationTitle("Account")
                .toolbar {
                    Button{
                        
                    } label: {
                        Text("Edit")
                    }
                }
                
            }

        }
    }

}

struct SalesAccountView_Previews: PreviewProvider {
    static var previews: some View {
        SalesAccountView()
    }
}
