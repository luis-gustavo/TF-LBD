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
    @objc dynamic var address: Address? = Address()
    @objc dynamic var phone: Phone? = Phone()
    
}
