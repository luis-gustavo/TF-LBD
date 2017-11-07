//
//  ItemMenu.swift
//  TF-LBD
//
//  Created by Geovanni Oliveira de Jesus on 09/10/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation
import RealmSwift

class MenuItem: Object {
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var name: String = ""
    var products: [String] {
        get {
            return _backingProducts.map { $0.stringValue }
        }
        set {
            _backingProducts.removeAll()
            _backingProducts.append(objectsIn: newValue.map({ RealmString(value: [$0]) }))
        }
    }
    let _backingProducts = List<RealmString>()
    
    override class func ignoredProperties() -> [String] {
        return ["products"]
    }
    
    @objc dynamic var price: Float = 0.0
    @objc dynamic var responsableToMakeId: String = ""
}

class ResponsableToMake: Object {
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var responsableJobDescription: String = ""
}

enum ResponsableJob: String {
    case kitchen = "kitchen"
    case bar = "bar"
}
