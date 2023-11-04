//
//  AddTransactionView.swift
//  FoodHub
//
//  Created by Jao Garcia on 9/11/23.
//

import SwiftUI


struct AddTransactionView: View {
    
    @State var searchtext: String = ""
    @State var inSearchMode: Bool = false
    var body: some View {
        ScrollView{
            SearchBarView(text: $searchtext, isEdting: $inSearchMode )
                .padding(10)
            
            
            //ProductsListView()
            if inSearchMode {
                ProductsListView()
            } else {
                CategoriesGridView()
            }
        }
    }
    
}

struct AddTransactionView_Previews: PreviewProvider {
    static var previews: some View {
        AddTransactionView()
    }
}


