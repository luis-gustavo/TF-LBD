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
    //var items = [String]()
    var items: [String] {
        get {
            return _backingItems.map { $0.stringValue }
        }
        set {
            _backingItems.removeAll()
            _backingItems.append(objectsIn: newValue.map({ RealmString(value: [$0]) }))
            //appendContentsOf(newValue.map { RealmString(value: [$0]) })
        }
    }
    let _backingItems = List<RealmString>()
    
    override class func ignoredProperties() -> [String] {
        return ["items"]
    }
//    var menuType: MenuType? = MenuType()
    var menuTypeId: String = ""
}

class MenuType: Object {
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var menuTypeDescription: String = ""
}
