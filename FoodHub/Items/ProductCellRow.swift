//
//  ProductCell.swift
//  FoodHub
//
//  Created by Jao Garcia on 10/11/23.
//

import SwiftUI

struct ProductCellRow: View {
    var body: some View {
        HStack {
            Image("Burger")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipped()
            
            VStack(alignment: .leading){
                Text("Cheese Burger")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(.black)
                Text("₱ 49.00")
                    .font(.system(size: 14))
            }
            
            Spacer()
        }
    }
}

struct ProductCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductCellRow()
    }
}
