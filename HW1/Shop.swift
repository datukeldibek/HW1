//
//  Shop.swift
//  HW1
//
//  Created by Jarae on 24/12/22.
//

import Foundation
class Shop{
    var shopName: String
    var products: [Product]

    init(shopName: String, products: [Product]) {
        self.shopName = shopName
        self.products = products
    }
    
    func adding(_ element: Product){
        var flag: Bool = false
        for item in products{
            if item.name == element.name{
                item.amount += element.amount
                flag = true
            }
        }
        if flag == false{
            products.append(element)
        }
        
    }
    func showInfo(){
        for i in products{
            i.out()
            
        }
    }
}
