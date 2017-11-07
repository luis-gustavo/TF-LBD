//
//  PrimitiveClasses.swift
//  TF-LBD
//
//  Created by Luis Gustavo Avelino de Lima Jacinto on 01/11/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import RealmSwift
import Foundation

class RealmInt: Object{
    @objc dynamic var intValue: Int = Int()
}

class RealmString: Object {
    @objc dynamic var stringValue: String = ""
}
