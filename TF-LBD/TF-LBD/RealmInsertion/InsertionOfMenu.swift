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
    
    class func insertOfmenu(realm: Realm) {
        let menu = Menu()
        menu.items = realm.objects(MenuItem.self).toArray()
        menu.menuType = realm.objects(MenuType.self).filter("menuTypeDescription = 'menu principal'").first
        
    }
    
    class func insertMainMenu(realm: Realm) {
        let mainMenu = MenuType()
        mainMenu.menuTypeDescription = "menu principal"
        
        try! realm.write {
            realm.add(mainMenu)
        }
    }
    class func insertMenuHappyHour(realm: Realm) {
        let happyHourManu = MenuType()
        happyHourManu.menuTypeDescription = "menu happy hour"
        
        try! realm.write {
            realm.add(happyHourManu)
        }

    }
    
    class func insertMainManuAndDependencies(realm: Realm) {
        
        insertMainMenu(realm: realm)
        insertMenuHappyHour(realm: realm)
        insertOfmenu(realm: realm)
    }
}
