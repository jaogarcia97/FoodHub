//
//  PostGridView.swift
//  FoodHub
//
//  Created by Jao Garcia on 10/11/23.
//

import SwiftUI

struct CategoriesGridView: View {
    
    private let items = [GridItem(), GridItem(), GridItem()]
    private let width = UIScreen.main.bounds.width / 3
    
    var body: some View {
        LazyVGrid(columns: items, spacing: 3, content: {
            ForEach(0 ..< 9) { _ in
                
                
                NavigationLink {
                    //Go to Items in the Categories
                    ProductsListView()
                } label: {
                    ZStack{
                        Image("BurgersGroup")
                            .resizable()
                                .scaledToFill()
                                .frame(width: width, height: width)
                                .cornerRadius(8) // Apply corner radius before clipping
                                .clipped()
        
                        VStack{
                            Spacer()
                            Text("Burgers")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .bold))
                        }
                        
                            
                    }
                }
 
            }
        })
        
    }
}

struct PostGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesGridView()
    }
}
