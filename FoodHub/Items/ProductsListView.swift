//
//  ProductsListView.swift
//  FoodHub
//
//  Created by Jao Garcia on 10/11/23.
//

import SwiftUI

struct ProductsListView: View {
    
    var body: some View {
        ScrollView{
            LazyVStack(spacing: 10){
                ForEach(0..<9){_ in
                    ProductCellRow()
                        .padding(.leading)
                }
            }
            
        }
    }
}

struct ProductsListView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsListView()
    }
}
