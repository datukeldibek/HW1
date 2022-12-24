//
//  main.swift
//  HW1
//
//  Created by Jarae on 24/12/22.
//

import Foundation

//1. Создать класс "Машина"(Car) и задать ему свойства
//Создать функцию, которая будет увеличивать мощность авто(тюнинг по всем параметрам)

print("1")
var car1: Car = Car(body: "sedan", engine: "petrol", transmission: "all-wheel drive", performance_indicators: 250)
var car2: Car = Car(body: "pickup", engine: "diesel", transmission: "front", performance_indicators: 130)
var carArray: [Car] = [car1, car2]

for i in carArray{
    i.powerIncrease()
}

//output:
//sedan before increasing 250
//sedan after increasing 350
//
//pickup before increasing 130
//pickup after increasing 230



//2 Создать класс "Магазин" и "Продукт" и задать им свойства
//Также создать функцию добавления продукта в магазин и отображения товаров в магазине

print("2")
var product1 = Product(name: "apple", price: 120, pr: "farm")
var product2 = Product(name: "banana", price: 120, pr: "farm")


var productArray = [Product]()
var shop = Shop(shopName: "globus", products: productArray)
shop.adding(product1)
shop.adding(product2)
//dump(shop)
shop.showInfo()

//output:
//apple 120 farm
//banana 120 farm

//доп
//Доп. Создать класс "Банк" и "Клиент"
//создать функции для:
//1) Подсчета клиентов банка
//2) Отображения баланса по ID или фамилии клиента
//3) Перевода средств от клиента к другому клиенту

print("\nдоп")


var client1 = Client(name: "A", lastName: "last name", ID: 8102002, balance: 1000000000)
var client2 = Client(name: "B", lastName: "last name", ID: 9011999, balance: 200)
var clientArray: [Client] = [client1, client2]


var bank = Bank(bankName: "Demir", clients: clientArray)
bank.clientsNum()
bank.balanceDisplay(9011999, "last name")
 
client1.makeTransaction(toClient: client2, quantity: 1000)
bank.balanceDisplay(9011999, "last name")
 
//Количество клиентов банка = 2
//на счету у B 200$
//на счету у B 1200$
