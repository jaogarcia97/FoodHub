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
        
        NavigationView{
            VStack {
                Divider()
                //TOTAL CASH:
                HStack{
                    Text("Total Cash in Registry: ")
                        .padding(.horizontal, 20)
                    Spacer()
                    Button {
                        showTotalCash.toggle()
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 8)
                                .foregroundColor(.gray)
                                .opacity(0.2)
                                .frame(width: 200, height: 35)
                            
                            if showTotalCash == false {
                                HStack{
                                    Image(systemName: "eye.slash")
                                        .foregroundColor(.black)
                                }
                                
                            } else {
                                HStack{
                                    Text("₱ 30,000.00")
                                        .font(.system(size: 25))
                                        .foregroundColor(.black)
                                    Image(systemName: "eye")
                                        .foregroundColor(.black)
                                }
                                
                            }
                        }
                    }
                    .padding(.horizontal, 20)
                }
                Divider()
                //DATE PICKER
                DatePicker("Select a Date", selection: $selectedDate, displayedComponents: .date)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 3)
                Divider()
                
                VStack{
                    Text("Branch:Tarlac FoodHub")
                        .fontWeight(.bold)
                    Text("Registry: Pasalubong Store")
                }
                //TRANSACTIONS
                List {
                        ForEach(0..<20, id: \.self) { _ in
                            TransactionRowView(transactionItem: viewModel.sampleTransactionItem)
                        }
                    
                }
            }
            .navigationTitle("Transaction History")
        }
        
    }
}

struct TransactionHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionHistoryView(viewModel: TransactionHistoryViewModel())
    }
}
