//
//  AddItemView.swift
//  FoodHub
//
//  Created by Jao Garcia on 10/15/23.
//

import SwiftUI

struct AddItemView: View {
    
    @State private var itemName: String = ""
    @State private var category: String = ""
    
    @State private var firstName: String = ""
    
    var body: some View {
        
        VStack{
            Spacer().frame(height: 20)
            HStack(alignment: .top){
                // Image:
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.gray)
                    .padding(.leading, 10)
                
                // Description:
                VStack (alignment: .leading){
                    TextField("Item Name", text: $itemName)
                        .font(.subheadline)
                        .padding(10)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.leading, 10)
                        .padding(.trailing, 10)
                        .shadow(color: Color.black.opacity(0.3), radius: 3)
                    
                    TextField("Item Price", text: $itemName)
                        .font(.subheadline)
                        .padding(10)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.leading, 10)
                        .padding(.trailing, 10)
                        .shadow(color: Color.black.opacity(0.3), radius: 3)
                    
                    
                    
                    
                    
                } //Inner VStack End
                
            } //HStack End
            
            Form {
                Section (header: Text("Select Category")) {
                    Picker(selection: $category,
                           label: Text("Category")) {
                        ForEach(0..<50) { number in
                            Text("Category # \(number)")
                                .tag("\(number)")
                        }
                    }
                    
                } //Section End
                
                Section(header: Text("Select Branch")) {
                    Picker(selection: $category,
                           label: Text("Branch")) {
                        ForEach(0..<50) { number in
                            Text("Branch # \(number)")
                                .tag("\(number)")
                        }
                    }
                    
                } //Section End
            }
            .navigationTitle("Add Item")
            .toolbar {
                Button{
                    
                } label: {
                    Text("Add Category")
                }
                
                Button{
                    
                } label: {
                    Text("Edit Item")
                }
            }
        
        } //Outer VStack End
        
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView()
    }
}
