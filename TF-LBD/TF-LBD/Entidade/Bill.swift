//
//  Conta.swift
//  TF-LBD
//
//  Created by Geovanni Oliveira de Jesus on 09/10/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation
import RealmSwift

class Bill: Object {
    @objc dynamic var id: String = UUID().uuidString
    var orders = List<Order>()
    @objc dynamic var table: Table? = Table()
    @objc dynamic var client: Client?
    @objc dynamic var cpfClientNotRegistered: String?
}
