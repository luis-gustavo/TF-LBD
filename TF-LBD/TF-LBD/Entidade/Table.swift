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
    var orders = List<Order>()
}
