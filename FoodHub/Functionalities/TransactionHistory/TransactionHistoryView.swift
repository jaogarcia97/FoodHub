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
            Spacer().frame(height: 5)
            CashDrawerView()
                .padding(10)
            
            //MARK: - TRANSACTION HISTORY
            ScrollView {
                
                //Spacer().frame(height: 10)
                Divider()
                Spacer().frame(height: 10)
                
                LazyVStack(spacing: 20){
                    ForEach(0..<20, id: \.self) { transaction in
                        TransactionRowView(transactionItem: viewModel.sampleTransactionItem)
                            .padding(.horizontal, 10)
    
                    }
                }
                
            }//End of Scroll View
        
        }
        
        
    }
}

struct TransactionHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionHistoryView(viewModel: TransactionHistoryViewModel())
    }
}
