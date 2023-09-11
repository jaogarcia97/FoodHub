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
    @State private var birthdate = Date()
    @State private var shouldSendNewsLetter = false
    

    var body: some View {
        NavigationView{
            Form {
                Section (header: Text("Personal information")) {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $firstName)

                }
                
                Section (header: Text("Branch information")) {
                    TextField("Branch designation", text: $firstName)
                    TextField("Cashier Location", text: $firstName)
                }
            }
            .navigationTitle("Account")
            .toolbar {
                Button{
                    
                } label: {
                    Text("Save")
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
