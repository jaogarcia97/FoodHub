//
//  SearchBarView.swift
//  FoodHub
//
//  Created by Jao Garcia on 10/11/23.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var text: String
    var body: some View {
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
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(text: .constant(""))
    }
}
