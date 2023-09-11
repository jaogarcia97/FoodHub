//
//  TransactionRowView.swift
//  FoodHub
//
//  Created by Jao Garcia on 9/9/23.
//

import SwiftUI

struct TransactionRowView: View {
    
    var transactionItem: TransactionItem
    
    //Transaction History
    var body: some View {
        HStack {
            //Image:
            Rectangle()
                .frame(width: 40, height: 40)
                .foregroundColor(.gray)

            Spacer().frame(width: 10)
            VStack{
                //Product Name
                Text(transactionItem.productName)
                    .lineLimit(nil) // Allow unlimited lines for multiline text
                    .frame(maxWidth: 130, alignment: .leading) // Set a maximum width of 200 points
                //Date of transaction
                Text(formatDate(transactionItem.dateStamp))
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
                    .frame(maxWidth: 130, alignment: .leading)
            }
            
            Spacer()
            
            
            Spacer()
            
            //Product Price
            Text(String(format: "₱ %.2f", transactionItem.productPrice))
        }
    }
    
    
    private func formatDate(_ date: Date) -> String {
            let formatter = DateFormatter()
            formatter.dateFormat = "HH:mm MMM dd yyyy" // Customize the date format as needed
            return formatter.string(from: date)
        }
}

struct TransactionRowView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionRowView(transactionItem:
                            TransactionItem(productName: "Bibingka",
                                            productCode: "2023BBKA",
                                            referenceNumber:"XCD234A",
                                            productPrice: 12.00,
                                            dateStamp: Date())
                           )
    }
}
