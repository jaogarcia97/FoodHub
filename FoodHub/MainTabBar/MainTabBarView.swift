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
        case addItem
        case addCategory
        case account
    }
    
    var body: some View {
        
        NavigationView {
            TabView(selection: $selection){
                TransactionHistoryView(viewModel: TransactionHistoryViewModel())
                    .tabItem {
                        Label("Transactions", systemImage: "list.bullet.rectangle")
                    }
                    .tag(Tab.transactionHistory)
                
                AddTransactionView()
                    .tabItem {
                        Label("Add Order", systemImage: "plus")
                    }
                    .tag(Tab.addTransaction)
                
                AddItemView()
                    .tabItem {
                        Label("Add Item", systemImage: "plus.square")
                    }
                    .tag(Tab.addItem)
                
                /*
                AddCategoryView()
                    .tabItem {
                        Label("Add Category", systemImage: "plus.square")
                    }
                    .tag(Tab.addCategory)
                 */
                
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
        }
        .navigationViewStyle(StackNavigationViewStyle()) //For ipad display
        //Background Color of the Main Bar
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
