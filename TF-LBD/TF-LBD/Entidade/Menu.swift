//
//  Menu.swift
//  TF-LBD
//
//  Created by Geovanni Oliveira de Jesus on 09/10/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation
import RealmSwift

class Menu: Object {
    @objc dynamic var id: String = UUID().uuidString
//    var items = [MenuItem]()
    var items = [String]()
//    var menuType: MenuType? = MenuType()
    var menuTypeId: String = ""
}

class MenuType: Object {
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var menuTypeDescription: String = ""
}
