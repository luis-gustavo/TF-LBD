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
        order.id = 1
        let orderedItem = realm.objects(MenuItem.self).filter("name = 'fricace'").first
        let secondOrderedItem = realm.objects(MenuItem.self).filter("name = 'cha'").first
        let thirdOrderedItem = realm.objects(MenuItem.self).filter("name = 'refrigerante'").first
        
//        order.menuItems.append(orderedItem!)
//        order.menuItems.append(secondOrderedItem!)
//        order.menuItems.append(thirdOrderedItem!)
//
        order.menuItems.append((orderedItem?.id)!)
        order.menuItems.append((secondOrderedItem?.id)!)
        order.menuItems.append((thirdOrderedItem?.id)!)
        
//        order.table = realm.objects(Table.self).filter("id = 2").first
//        order.waiter = realm.objects(Employee.self).filter("name = 'Beatrice Pinto Ferreira'").first

        order.table = 2
        order.waiter = (realm.objects(Employee.self).filter("name = 'Beatrice Pinto Ferreira'").first?.id)!
        
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
        order.id = 2

        let orderedItem = realm.objects(MenuItem.self).filter("name = 'fricace'").first
        let secondOrderedItem = realm.objects(MenuItem.self).filter("name = 'cha'").first
        let thirdOrderedItem = realm.objects(MenuItem.self).filter("name = 'refrigerante'").first
        let fourthOrderedItem = realm.objects(MenuItem.self).filter("name = 'bolo'").first
        
//        order.menuItems.append(orderedItem!)
//        order.menuItems.append(secondOrderedItem!)
//        order.menuItems.append(thirdOrderedItem!)
//        order.menuItems.append(fourthOrderedItem!)

        order.menuItems.append((orderedItem?.id)!)
        order.menuItems.append((secondOrderedItem?.id)!)
        order.menuItems.append((thirdOrderedItem?.id)!)
        order.menuItems.append((fourthOrderedItem?.id)!)
        
//        order.table = realm.objects(Table.self).filter("id = 5").first
//        order.waiter = realm.objects(Employee.self).filter("name = 'Murilo Pereira Araujo'").first

        order.table = 5
        order.waiter = (realm.objects(Employee.self).filter("name = 'Murilo Pereira Araujo'").first?.id)!
        

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
        order.id = 3

        let orderedItem = realm.objects(MenuItem.self).filter("name = 'bolo'").first
        let secondOrderedItem = realm.objects(MenuItem.self).filter("name = 'bolo'").first

        
//        order.menuItems.append(orderedItem!)
//        order.menuItems.append(secondOrderedItem!)

        order.menuItems.append((orderedItem?.id)!)
        order.menuItems.append(secondOrderedItem!.id)
        
//        order.table = realm.objects(Table.self).filter("id = 2").first
//        order.waiter = realm.objects(Employee.self).filter("name = 'Beatrice Pinto Ferreira'").first

        order.table = 2
        order.waiter = (realm.objects(Employee.self).filter("name = 'Beatrice Pinto Ferreira'").first?.id)!
        

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
        order.id = 4

        let orderedItem = realm.objects(MenuItem.self).filter("name = 'fricace'").first
        let secondOrderedItem = realm.objects(MenuItem.self).filter("name = 'cha'").first
        let thirdOrderedItem = realm.objects(MenuItem.self).filter("name = 'refrigerante'").first
        let fourthOrderedItem = realm.objects(MenuItem.self).filter("name = 'bolo'").first
        let fifthOrderedItem = realm.objects(MenuItem.self).filter("name = 'bolo'").first
        let sixthOrderedItem = realm.objects(MenuItem.self).filter("name = 'bolo'").first

        
//        order.menuItems.append(orderedItem!)
//        order.menuItems.append(secondOrderedItem!)
//        order.menuItems.append(thirdOrderedItem!)
//        order.menuItems.append(fourthOrderedItem!)
//        order.menuItems.append(fifthOrderedItem!)
//        order.menuItems.append(sixthOrderedItem!)


        order.menuItems.append((orderedItem?.id)!)
        order.menuItems.append((secondOrderedItem?.id)!)
        order.menuItems.append((thirdOrderedItem?.id)!)
        order.menuItems.append((fourthOrderedItem?.id)!)
        order.menuItems.append((fifthOrderedItem?.id)!)
        order.menuItems.append((sixthOrderedItem?.id)!)


//        order.table = realm.objects(Table.self).filter("id = 3").first
//
//        order.waiter = realm.objects(Employee.self).filter("name = 'Murilo Pereira Araujo'").first

        order.table = 3
        
        order.waiter = (realm.objects(Employee.self).filter("name = 'Murilo Pereira Araujo'").first?.id)!
        

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
