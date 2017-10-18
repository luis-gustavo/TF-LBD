//
//  Menu.swift
//  TF-LBD
//
//  Created by Geovanni Oliveira de Jesus on 09/10/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation
import RealmSwift

class Menu: Object {
    @objc dynamic var id: String = UUID().uuidString
    var items = List<MenuItem>()
    var MenuType: String = ""
}
