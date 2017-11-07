//
//  OComilaoQueries.swift
//  TF-LBD
//
//  Created by Luis Gustavo Avelino de Lima Jacinto on 30/10/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import UIKit
import RealmSwift

class OComilaoQueries{
    
    //Relação dos pedidos efetuados
    class func allOrdersQuery(realm: Realm){
        let allOrders = realm.objects(Order.self)
        var count = 1
        for order in allOrders{
            print("----------")
            print("Pedido \(count)")
            print(order)
            count += 1
        }
        print("----------")
        
    }
    
    //Relação dos produtos em estoque
    class func allProductsInStorage(realm: Realm){
        let mainStorage = realm.objects(Storage.self).filter("name = 'principal'").first
        
        var count = 1
        for product in (mainStorage?.products)!{
            print("----------")
            print("Produto \(count)")
            print(product)
            count += 1
        }
        print("----------")
        
    }
    
    //Relação de Clientes cadastrados
    class func allClientsRegistered(realm: Realm){
        let allClients = realm.objects(Client.self)
        
        var count = 1
        for client in allClients{
            print("----------")
            print("Cliente \(count)")
            print(client)
            count += 1
        }
        print("----------")
    }
    
    //Relação dos pagamentos efetuados
    class func allBillsMade(realm: Realm) {
        let allBills = realm.objects(Bill.self)
        
        var count = 1
        for bill in allBills{
            print("----------")
            print("Pagamento \(count)")
            print(bill)
            count += 1
        }
        print("----------")
    }
    
    //Lista dos clientes por perfil (exemplo: pratos mais consumidos pelo cliente)
    class func favoriteDishesOfClient(realm: Realm, menuItemId: String){
        
        let clients:[Client] = realm.objects(Client.self).toArray()
        var clientsWhoLikesTheDish:[Client] = []
        
        
        for client in clients {
            if client.favoriteMenuItems.contains(menuItemId) {
                clientsWhoLikesTheDish.append(client)
            }
        }
        
        for client in clientsWhoLikesTheDish {
            print("----------")
            print(client.name)
            print(client.cpf)
            let sex = realm.objects(Sex.self).filter("id = '\(client.sexo)'").first
            print(sex!.sexType)
            print("id: \(client.id)")
        }
        print("----------")
        
    }
    
    //Lista todos os produtos pereciveis no estoque
    class func expiredProductsInStock(realm: Realm){
        let storage = realm.objects(Storage.self).first
        var expiredProducts: [Product] = []
        
        for productId in (storage?.products)!{
            let product = realm.objects(Product.self).filter("id = '\(productId)'").first
            
            if (product?.expirationDate)! < Date(){
                expiredProducts.append(product!)
            }
        }
        
        var count = 1
        for product in expiredProducts{
            print("----------")
            print("Produto Vencido \(count)")
            print(product.name)
            let amount = realm.objects(Amount.self).filter("id = '\(product.amountId)'").first
            print("Quantidade: \(product.quantity) \(amount!.amountDescription)")
            print("Id: \(product.id)")
            count += 1
        }
        print("----------")
    }
    
    class func productsAboutToExpire(realm: Realm) {
        let storage = realm.objects(Storage.self).first
        var productsAboutToExpire: [Product] = []
        
        let oneMonthDate = InsertionOfProducts.returnExpirationDateFromNow(day: 0, month: 1, year: 0)
        
        for productId in (storage?.products)!{
            let product = realm.objects(Product.self).filter("id = '\(productId)'").first
            
            if((product?.expirationDate)! <= oneMonthDate && (product?.expirationDate)! >= Date()) {
                productsAboutToExpire.append(product!)
            }
            
        }
        
        var count = 1
        for product in productsAboutToExpire{
            print("----------")
            print("Produto perto de vencer: \(count)")
            print(product.name)
            let amount = realm.objects(Amount.self).filter("id = '\(product.amountId)'").first
            print("Quantidade: \(product.quantity) \(amount!.amountDescription)")
            print("Id: \(product.id)")
            count += 1
        }
        print("----------")
    }
    
    class func informationsOfTable(realm: Realm, tableId: Int){
        let table = realm.objects(Table.self).filter("id = \(tableId)").first
        
        var count = 0
        for orderId in (table?.orders)!{
            let order = realm.objects(Order.self).filter("id = \(orderId)").first
            print("----------")
            print("Pedido \(count)")
            let waiter = realm.objects(Employee.self).filter("id = '\(order!.waiter)'").first
            print("Nome do Garçom: \(waiter!.name)")
            print("Id do Garçom: \(waiter!.id)")
            for menuItemId in (order?.menuItems)!{
                let menuItem = realm.objects(MenuItem.self).filter("id = '\(menuItemId)'").first
                print("Item pedido: \(menuItem!.name)")
            }
            
            count += 1
        }
    }
}
