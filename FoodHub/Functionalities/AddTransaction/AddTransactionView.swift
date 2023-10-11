//
//  AddTransactionView.swift
//  FoodHub
//
//  Created by Jao Garcia on 9/11/23.
//

import SwiftUI


struct AddTransactionView: View {
    @State var searchtext: String = ""
    var body: some View {
        ScrollView{
            SearchBarView(text: $searchtext)
        }
        
    }
    
}

struct AddTransactionView_Previews: PreviewProvider {
    static var previews: some View {
        AddTransactionView()
    }
}


