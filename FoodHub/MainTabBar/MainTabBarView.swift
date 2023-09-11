//
//  MainTabBarView.swift
//  FoodHub
//
//  Created by Jao Garcia on 9/7/23.
//

import SwiftUI

struct MainTabBarView: View {
    
    @State private var selection: Tab = .transactionHistory
    
    enum Tab {
        case transactionHistory
        case addTransaction
        case account
    }
    
    
    var body: some View {
        TabView(selection: $selection){
            TransactionHistoryView(viewModel: TransactionHistoryViewModel())
                .tabItem {
                    Label("Transactions", systemImage: "list.bullet.rectangle")
                }
                .tag(Tab.transactionHistory)
            
            AddTransactionView()
                .tabItem {
                    Label("Add Transactions", systemImage: "plus")
                }
                .tag(Tab.addTransaction)
            SalesAccountView()
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle")
                }
                .tag(Tab.account)
            
            
        }
    }
}

struct MainTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBarView()
    }
}
