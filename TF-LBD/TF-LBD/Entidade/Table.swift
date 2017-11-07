//
//  Mesa.swift
//  TF-LBD
//
//  Created by Geovanni Oliveira de Jesus on 09/10/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation
import RealmSwift

class Table: Object {
    @objc dynamic var id: Int = 0
    @objc dynamic var capacity: Int = 0
    @objc dynamic var floor: Int = 0
    var orders: [Int] {
        get {
            return _backingOrders.map { $0.intValue }
        }
        set {
            _backingOrders.removeAll()
            _backingOrders.append(objectsIn: newValue.map({ RealmInt(value: [$0]) }))
        }
    }
    let _backingOrders = List<RealmInt>()
    
    override class func ignoredProperties() -> [String] {
        return ["orders"]
    }
}
