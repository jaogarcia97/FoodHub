//
//  SearchBarView.swift
//  FoodHub
//
//  Created by Jao Garcia on 10/11/23.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var text: String
    @Binding var isEdting: Bool
    
    var body: some View {
        HStack {
            //MARK: - TEXTFIELD
            TextField("Search Item", text: $text)
                .padding(.horizontal, 30)
                .padding(8)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    Image(systemName: "magnifyingglass")
                        .frame(maxWidth: .infinity,
                               maxHeight: 0,
                               alignment: .leading)
                        .padding(.leading, 10)
                        .foregroundColor(.gray)
                )
                .onTapGesture {
                    isEdting = true
                }
            
            //MARK: - CANCEL BUTTON
            if isEdting  {
                Button {
                    //isEditing is cancelled upon Cancel
                    isEdting = false
                    
                    //Clear text when cancelled
                    text = ""
                    
                    //Close the Keyboard when Cancel is Pressed
                    UIApplication.shared.endEditing()
                } label: {
                    Text("Cancel")
                        .foregroundColor(.black)
                }
                .padding(.trailing, 8)
                .transition(.move(edge: .trailing))
                .animation(.default)
            }
        }
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(text: .constant(""), isEdting: .constant(true))
    }
}
