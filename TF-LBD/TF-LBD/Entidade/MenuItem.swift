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
    var products = List<Product>()
    @objc dynamic var price: Float = 0.0
}
