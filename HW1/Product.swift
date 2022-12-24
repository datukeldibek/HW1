//
//  Product.swift
//  HW1
//
//  Created by Jarae on 24/12/22.
//

import Foundation
class Product{
    var name: String
    var price: Int
    var pr: String
    var amount: Int
    
    init(name: String, price: Int, pr: String, amount: Int) {
        self.name = name
        self.price = price
        self.pr = pr
        self.amount = amount
    }
    func out(){
        print("\(name) \(price) \(pr) \(amount)")
    }
}
