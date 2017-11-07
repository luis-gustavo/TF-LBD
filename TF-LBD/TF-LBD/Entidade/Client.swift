//
//  Cliente.swift
//  TF-LBD
//
//  Created by Geovanni Oliveira de Jesus on 09/10/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation
import RealmSwift

class Client: Object {
    
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var cpf: String = ""
    @objc dynamic var name: String = ""
    @objc dynamic var email: String = ""
    @objc dynamic var sexo: String = ""
    @objc dynamic var address: String = ""
    @objc dynamic var phone: String = ""
    var favoriteMenuItems: [String] {
        get {
            return _backingFavoriteMenuItems.map { $0.stringValue }
        }
        set {
            _backingFavoriteMenuItems.removeAll()
            _backingFavoriteMenuItems.append(objectsIn: newValue.map({ RealmString(value: [$0]) }))
        }
    }
    let _backingFavoriteMenuItems = List<RealmString>()
    
    override class func ignoredProperties() -> [String] {
        return ["favoriteMenuItems"]
    }
    
}
