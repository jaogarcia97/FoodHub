//
//  Extensions.swift
//  FoodHub
//
//  Created by Jao Garcia on 10/11/23.
//

import Foundation
import UIKit




extension UIApplication {
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
