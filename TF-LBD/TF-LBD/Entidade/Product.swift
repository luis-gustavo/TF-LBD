//
//  Produto.swift
//  TF-LBD
//
//  Created by Geovanni Oliveira de Jesus on 09/10/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation
import RealmSwift

class Product: Object {
    @objc dynamic var id = UUID().uuidString
    @objc dynamic var name = ""
    @objc dynamic var isPerishable = false
    @objc dynamic var expirationDate = Date()
    @objc dynamic var amount = Amount()
}

class Amount: Object {
    @objc dynamic var id = UUID().uuidString
    @objc dynamic var amountDescription: String = ""
    @objc dynamic var quantity: Float = 0.0
}
