//
//  Pedido.swift
//  TF-LBD
//
//  Created by Geovanni Oliveira de Jesus on 09/10/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation
import RealmSwift

class Order: Object {
    @objc dynamic var id: Int = 0
    @objc dynamic var table: Int = -1
    @objc dynamic var waiter: String = ""
    
    var menuItems: [String] {
        get {
            return _backingMenuItems.map { $0.stringValue }
        }
        set {
            _backingMenuItems.removeAll()
            _backingMenuItems.append(objectsIn: newValue.map({ RealmString(value: [$0]) }))
        }
    }
    let _backingMenuItems = List<RealmString>()
    
    override class func ignoredProperties() -> [String] {
        return ["menuItems"]
    }
    
    
    /**
     Function to calculate the subtotal of an order
     - returns: the calculated amount
     */
    func calculateSubTotal() -> Float{
        
        var subTotal:Float = 0.0
        
        for item in menuItems {
            let item = realm?.objects(MenuItem.self).filter("id = '\(item)'").first
            subTotal += (item?.price)!
        }
        return subTotal
    }
}


