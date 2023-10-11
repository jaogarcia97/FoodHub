//
//  CashDrawerView.swift
//  FoodHub
//
//  Created by Jao Garcia on 10/10/23.
//

import SwiftUI

struct CashDrawerView: View {
    
    @State private var showTotalCash = false
    
    var body: some View {
            

            VStack(){
                //MARK: - CASH DRAWER INFO
                HStack {
                    VStack(alignment: .leading){
                        Group {
                            Text("Cash Drawer:")
                                .font(.system(size: 18))
                                .fontWeight(.semibold)
                            Text("Victory Liner: San Fernando, Pampanga")
                                .font(.system(size: 12))
                                .fontWeight(.semibold)
                            Text("Pasalubong Store")
                                .font(.system(size: 10))
                                .fontWeight(.semibold)
                        }
                    }
                    Spacer()
                }
                .padding(10)
                
                //MARK: - CURRENT CASH
                HStack() {
                   
                    Spacer()
                    
                    Button {
                        showTotalCash.toggle()
                    } label: {
                            if showTotalCash == false {
                                HStack{
                                    Image(systemName: "eye.slash")
                                        .foregroundColor(.blue)
                                        //.padding(.vertical, 10)
                                }
                            } else {
                                HStack{
                                    Text("₱ 30,000.00")
                                        .font(.system(size: 18))
                                    Image(systemName: "eye")
                                        .padding(.vertical, 10)
                                       
                                }
                                .foregroundColor(.white)

                            }

                    }//CURRENT CASH
                    .padding(.horizontal, 10)
                    .padding(.bottom, 20)

                }
                .padding(.vertical, 10)
                .padding(.vertical, 20)
                .frame(height:22)
                
                
                
            }
            .frame(height: 100)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .shadow(radius: 5)
                    .frame(height: 100)
            )
            .foregroundColor(.white)
        
            
    
        
    }
}

struct CashDrawerView_Previews: PreviewProvider {
    static var previews: some View {
        CashDrawerView()
    }
}
