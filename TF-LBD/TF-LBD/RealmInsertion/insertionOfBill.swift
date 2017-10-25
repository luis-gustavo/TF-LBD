//
//  insertionOfBill.swift
//  TF-LBD
//
//  Created by Geovanni Oliveira de Jesus on 24/10/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation
import RealmSwift

class InsertionOfBill {
    
    /**
     Function to create the first bill
     - parameter realm: realm instance to save the bill
     */
    class func creationOfTheFirstBill(realm: Realm) {
        let bill = Bill()
        bill.id = 1
        
        let firstOrder = realm.objects(Order.self).filter("id = 1").first
        let secondOrder = realm.objects(Order.self).filter("id = 3").first
        
        bill.orders.append(firstOrder!)
        bill.orders.append(secondOrder!)
        bill.table = realm.objects(Table.self).filter("id = 2").first
        bill.client = realm.objects(Client.self).filter("name = 'Samuel Martins Dias'").first
        
        try! realm.write {
            realm.add(bill)
        }

    }
    
    /**
     Function to create the second bill
     - parameter realm: realm instance to save the bill
     */
    class func creationOfTheSecondBill(realm: Realm) {
        let bill = Bill()
        bill.id = 2
        let firstOrder = realm.objects(Order.self).filter("id = 2").first

        bill.orders.append(firstOrder!)
        bill.table = realm.objects(Table.self).filter("id = 5").first
        bill.cpfClientNotRegistered = "123.432.123-43"
        
        try! realm.write {
            realm.add(bill)
        }
    }
   
    /**
     Function to create all the bill
     - parameter realm: realm instance to save the bill
     */
    class func creationOftheBills(realm: Realm) {
        creationOfTheFirstBill(realm: realm)
        creationOfTheSecondBill(realm: realm)
    }
}
