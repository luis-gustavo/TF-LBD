//
//  InsertionOfMenuItem.swift
//  TF-LBD
//
//  Created by Geovanni Oliveira de Jesus on 21/10/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation
import RealmSwift

class InsertionOfMenuItem {

    /**
     Function to add a fricacé as a Menu item of the restaurant
     - parameter realm: realm instance to save the item
     */

    class func insertFricace(realm: Realm) {
        let fricace = MenuItem()
        fricace.name = "fricace"
        fricace.price = 30.0
        let greenCorn = realm.objects(Product.self).filter("name = 'milho verde'").first
        let milkCream = realm.objects(Product.self).filter("name = 'creme de leite'").first
        let creamyCheese = realm.objects(Product.self).filter("name = 'requeijao'").first
        let chickenBreast = realm.objects(Product.self).filter("name = 'peito de frango'").first

        fricace.products.append(greenCorn!)
        fricace.products.append(milkCream!)
        fricace.products.append(creamyCheese!)
        fricace.products.append(chickenBreast!)

        fricace.responsableToMake = realm.objects(ResponsableToMake.self).filter("responsableJobDescription = 'kitchen'").first

        try! realm.write {
            realm.add(fricace)
        }
    }

    /**
     function to create a tea as a drink
     - parameter realm: realm instance to save the drink
     */
    class func insertTea(realm: Realm) {
        let tea = MenuItem()
        tea.name = "cha"
        tea.price = 10.0
        tea.responsableToMake = realm.objects(ResponsableToMake.self).filter("responsableJobDescription = 'bar'").first

        try! realm.write {
            realm.add(tea)
        }
    }
    /**
     function to create a softdrink as a drink
     - parameter realm: realm instance to save the drink
     */
    class func insertSoftDrink(realm: Realm) {
        let softdrink = MenuItem()
        softdrink.name = "refrigerante"
        softdrink.price = 9.90
        softdrink.responsableToMake = realm.objects(ResponsableToMake.self).filter("responsableJobDescription = 'bar'").first

        try! realm.write {
            realm.add(softdrink)
        }
    }

    /**
     function to create a cake
     - parameter realm: realm instance to save the cake
     */
    class func insertCake(realm: Realm) {
        let cake = MenuItem()
        cake.name = "bolo"
        cake.price = 5.0
        let flour = realm.objects(Product.self).filter("name = 'farinha'").first
        let egg = realm.objects(Product.self).filter("name = 'ovo'").first
        cake.products.append(flour!)
        cake.products.append(egg!)

        try! realm.write {
            realm.add(cake)
        }
    }

    /**
     function to create all items from the menu
     - parameter realm: realm instance to sabe the items
     */

    class func createAllItemsForTheMenu(realm: Realm) {
        insertFricace(realm: realm)
        insertTea(realm: realm)
        insertSoftDrink(realm: realm)
        insertCake(realm: realm)
    }

    /**
     function to add the kitchen to be responsable to make the dish
     - parameter realm: realm instance to save the kitchen
     */

    class func insertionOfKitchenResponsableToMake(realm: Realm) {
        let responsable = ResponsableToMake()
        responsable.responsableJobDescription = "kitchen"

        try! realm.write {
            realm.add(responsable)
        }
    }

    /**
     function to add the bar as a responsable to make the drink
     - parameter realm: realm instance to save the bar instance
     */
    class func insertionOfBarResponsableToMake(realm: Realm) {
        let responsable = ResponsableToMake()
        responsable.responsableJobDescription = "bar"

        try! realm.write {
            realm.add(responsable)
        }
    }

    /**
     function to create both kitchen and bar as a responsable to make a dish
     - parameter realm: realm instance to save the instances created
     */
   class func insertionOfSectorResponsableToMake(realm: Realm) {

        insertionOfBarResponsableToMake(realm: realm)
        insertionOfKitchenResponsableToMake(realm: realm)
    }
}


