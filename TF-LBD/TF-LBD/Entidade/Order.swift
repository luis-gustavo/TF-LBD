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
    @objc dynamic var id: String = UUID().uuidString
    var menuItems = List<MenuItem>()
    @objc dynamic var table = Table()
}
