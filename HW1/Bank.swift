//
//  Bank.swift
//  HW1
//
//  Created by Jarae on 24/12/22.
//

import Foundation
class Bank{
    var bankName: String
    var clients: [Client]
    
    init(bankName: String, clients: [Client]) {
        self.bankName = bankName
        self.clients = clients
    }
    
    func clientsNum(){
        print("Количество клиентов банка = \(clients.count)")
    }
    func balanceDisplay(_ id: Int){
        for client in clients{
            if client.ID == id{
                print("на счету у \(client.name) \(client.balance)$")
            }
        }
    }
    
}
