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
                    Label("Add Manually", systemImage: "plus")
                }
                .tag(Tab.addTransaction)
            
            AddTransactionML()
                .tabItem {
                    Label("Scan Item", systemImage: "camera.metering.center.weighted.average")
                }
                .tag(Tab.addTransaction)
            
            SalesAccountView()
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle")
                }
                .tag(Tab.account)
            
            
        }
        .onAppear {
                        // correct the transparency bug for Tab bars
                        let tabBarAppearance = UITabBarAppearance()
                        tabBarAppearance.configureWithOpaqueBackground()
                        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
                        // correct the transparency bug for Navigation bars
                        let navigationBarAppearance = UINavigationBarAppearance()
                        navigationBarAppearance.configureWithOpaqueBackground()
                        UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
                    }
    }
}

struct MainTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBarView()
    }
}
