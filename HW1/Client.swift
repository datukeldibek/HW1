//
//  Client.swift
//  HW1
//
//  Created by Jarae on 24/12/22.
//

import Foundation
class Client{
    var name: String
    var lastName: String
    var ID: Int
    var balance: Int
    
    init(name: String, lastName: String, ID: Int, balance: Int) {
        self.name = name
        self.lastName = lastName
        self.ID = ID
        self.balance = balance
    }
    
    func makeTransaction (toClient: Client, quantity: Int) {
        if balance >= quantity {
            balance -= quantity //уменьшаем баланс у клиента, который отправляет
            toClient.balance += quantity //пополняем баланс клиенту, которому отправляем средства

        } else {
             print("недостаточно средств для отправки")
        }
    }
}
