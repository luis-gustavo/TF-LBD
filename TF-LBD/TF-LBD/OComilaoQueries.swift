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
            print("----------")
            count += 1
        }
    }
    
    //Relação dos produtos em estoque
    class func allProductsInStorage(realm: Realm){
        let mainStorage = realm.objects(Storage.self).filter("name = 'principal'").first
        
        var count = 1
        for product in (mainStorage?.products)!{
            print("----------")
            print("Produto \(count)")
            print(product)
            print("----------")
            count += 1
        }
        
    }
    
    //Relação de Clientes cadastrados
    class func allClientsRegistered(realm: Realm){
        let allClients = realm.objects(Client.self)
        
        var count = 1
        for client in allClients{
            print("----------")
            print("Cliente \(count)")
            print(client)
            print("----------")
            count += 1
        }
    }
    
    //Relação dos pagamentos efetuados
    class func allBillsMade(realm: Realm) {
        let allBills = realm.objects(Bill.self)
        
        var count = 1
        for bill in allBills{
            print("----------")
            print("Pagamento \(count)")
            print(bill)
            print("----------")
            count += 1
        }
    }
    
    //Lista dos clientes por perfil (exemplo: pratos mais consumidos pelo cliente)
    
}
