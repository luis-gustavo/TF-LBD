//
//  InsertionOfMenu.swift
//  TF-LBD
//
//  Created by Geovanni Oliveira de Jesus on 21/10/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation
import RealmSwift

class InsertionOfMenu {

    /**
     Function to insert a Menu
     - parameter realm: realm instance to save the menu
     */
    class func insertOfmenu(realm: Realm) {
        let menu = Menu()

//        menu.items = realm.objects(MenuItem.self).toArray()
//        menu.menuType = realm.objects(MenuType.self).filter("menuTypeDescription = 'menu principal'").first

        let itens: [MenuItem] = realm.objects(MenuItem.self).toArray()
        for item in itens {
            menu.items.append(item.id)
        }
        
        menu.menuTypeId = (realm.objects(MenuType.self).filter("menuTypeDescription = 'menu principal'").first?.id)!

    }
    /**
     function to insert the main menu into the database
     - parameter realm: realm instance to save the main menu
     */
    class func insertMainMenu(realm: Realm) {
        let mainMenu = MenuType()
        mainMenu.menuTypeDescription = "menu principal"

        try! realm.write {
            realm.add(mainMenu)
        }
    }

    /**
     function to insert the happy hour menu into the database
     - parameter realm: realm instance to save the main menu
     */
    class func insertMenuHappyHour(realm: Realm) {
        let happyHourManu = MenuType()
        happyHourManu.menuTypeDescription = "menu happy hour"

        try! realm.write {
            realm.add(happyHourManu)
        }

    }

    /**
     function to insert the menus into the database
     - parameter realm: realm instance to save the main menu
     */
    class func insertMainManuAndDependencies(realm: Realm) {

        insertMainMenu(realm: realm)
        insertMenuHappyHour(realm: realm)
        insertOfmenu(realm: realm)
    }
}

