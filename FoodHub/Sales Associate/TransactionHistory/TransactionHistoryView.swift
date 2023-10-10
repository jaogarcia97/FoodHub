//
//  TransactionHistoryView.swift
//  FoodHub
//
//  Created by Jao Garcia on 9/9/23.
//

import SwiftUI

struct TransactionHistoryView: View {
    
    var viewModel: TransactionHistoryViewModel
    
    @State private var selectedDate = Date()
    @State private var showTotalCash = false
    
    var body: some View {
        
        VStack {
            
            //MARK: - CASH DRAWER
            CashDrawerView()
                .padding(10)
            
            //MARK: - TRANSACTION HISTORY
            ScrollView {
                    VStack {
                        Spacer().frame(height: 20)
                        Divider()
                        
                        ScrollView {
                            ForEach(0..<20, id: \.self) { transaction in
                                TransactionRowView(transactionItem: viewModel.sampleTransactionItem)
                                    .padding(10)
                            }
                            
                        }
                    }
                }//End of Scroll View
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        HStack {
                            Image(systemName: "person.circle.fill")
                            Text("Magsino, Candy")
                                //.font(.title)
                                .fontWeight(.semibold)
                                .font(.system(size: 18))
                        }
                        
                    }
                    
            }
        }
        
        
    }
}

struct TransactionHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionHistoryView(viewModel: TransactionHistoryViewModel())
    }
}
