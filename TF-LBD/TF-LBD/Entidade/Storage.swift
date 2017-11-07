//
//  Estoque.swift
//  TF-LBD
//
//  Created by Geovanni Oliveira de Jesus on 09/10/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation
import RealmSwift

class Storage: Object {
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var name: String = ""
//    var products = List<Product>()
    //var products = [String]()
    var products: [String] {
        get {
            return _backingProducts.map { $0.stringValue }
        }
        set {
            _backingProducts.removeAll()
            _backingProducts.append(objectsIn: newValue.map({ RealmString(value: [$0]) }))
            //appendContentsOf(newValue.map { RealmString(value: [$0]) })
        }
    }
    let _backingProducts = List<RealmString>()
    
    override class func ignoredProperties() -> [String] {
        return ["products"]
    }
}
