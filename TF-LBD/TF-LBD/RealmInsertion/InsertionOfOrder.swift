//
//  InsertionOfOrder.swift
//  TF-LBD
//
//  Created by Geovanni Oliveira de Jesus on 24/10/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation
import RealmSwift

class InsertionOfOrder {

    /**
     function to create the first order
     - parameter realm: realm instance to save the order
     */
    class func creationOfFirstOrder(realm: Realm) {
        let order = Order()
        
        let orderedItem = realm.objects(MenuItem.self).filter("name = 'fricace'").first
        let secondOrderedItem = realm.objects(MenuItem.self).filter("name = 'cha'").first
        let thirdOrderedItem = realm.objects(MenuItem.self).filter("name = 'refrigerante'").first
        
        order.menuItems.append(orderedItem!)
        order.menuItems.append(secondOrderedItem!)
        order.menuItems.append(thirdOrderedItem!)
        
        order.table = realm.objects(Table.self).filter("id = 2").first
        order.waiter = realm.objects(Employee.self).filter("name = 'Beatrice Pinto Ferreira'").first
        
        try! realm.write {
            realm.add(order)
        }
    }
    
    /**
     function to create the second order
     - parameter realm: realm instance to save the order
     */
    class func creationOfSecondOrder(realm:  Realm) {
        
        let order = Order()
        
        let orderedItem = realm.objects(MenuItem.self).filter("name = 'fricace'").first
        let secondOrderedItem = realm.objects(MenuItem.self).filter("name = 'cha'").first
        let thirdOrderedItem = realm.objects(MenuItem.self).filter("name = 'refrigerante'").first
        let fourthOrderedItem = realm.objects(MenuItem.self).filter("name = 'bolo'").first
        
        order.menuItems.append(orderedItem!)
        order.menuItems.append(secondOrderedItem!)
        order.menuItems.append(thirdOrderedItem!)
        order.menuItems.append(fourthOrderedItem!)
        
        order.table = realm.objects(Table.self).filter("id = 5").first
        order.waiter = realm.objects(Employee.self).filter("name = 'Murilo Pereira Araujo'").first
        
        try! realm.write {
            realm.add(order)
        }
    }

    /**
     function to create the third order
     - parameter realm: realm instance to save the order
     */
    class func creationOfThirdOrder(realm:  Realm) {
        
        let order = Order()
        
        let orderedItem = realm.objects(MenuItem.self).filter("name = 'bolo'").first
        let secondOrderedItem = realm.objects(MenuItem.self).filter("name = 'bolo'").first

        
        order.menuItems.append(orderedItem!)
        order.menuItems.append(secondOrderedItem!)
        
        order.table = realm.objects(Table.self).filter("id = 2").first
        order.waiter = realm.objects(Employee.self).filter("name = 'Beatrice Pinto Ferreira'").first
        
        try! realm.write {
            realm.add(order)
        }
    }
    
    /**
     function to create the fourth order
     - parameter realm: realm instance to save the order
     */
    class func creationOfFourthOrder(realm:  Realm) {
        
        let order = Order()
        
        let orderedItem = realm.objects(MenuItem.self).filter("name = 'fricace'").first
        let secondOrderedItem = realm.objects(MenuItem.self).filter("name = 'cha'").first
        let thirdOrderedItem = realm.objects(MenuItem.self).filter("name = 'refrigerante'").first
        let fourthOrderedItem = realm.objects(MenuItem.self).filter("name = 'bolo'").first
        let fifthOrderedItem = realm.objects(MenuItem.self).filter("name = 'bolo'").first
        let sixthOrderedItem = realm.objects(MenuItem.self).filter("name = 'bolo'").first
        
        order.menuItems.append(orderedItem!)
        order.menuItems.append(secondOrderedItem!)
        order.menuItems.append(thirdOrderedItem!)
        order.menuItems.append(fourthOrderedItem!)
        order.menuItems.append(fifthOrderedItem!)
        order.menuItems.append(sixthOrderedItem!)
        
        order.table = realm.objects(Table.self).filter("id = 3").first
        order.waiter = realm.objects(Employee.self).filter("name = 'Murilo Pereira Araujo'").first
        
        try! realm.write {
            realm.add(order)
        }
    }
    
    /**
     function to create all the orders
     - parameter realm: realm instance to save the orders
     */
    class func createAllOrders(realm: Realm) {
        creationOfFirstOrder(realm: realm)
        creationOfSecondOrder(realm: realm)
        creationOfThirdOrder(realm: realm)
        creationOfFourthOrder(realm: realm)
    
    }
}
