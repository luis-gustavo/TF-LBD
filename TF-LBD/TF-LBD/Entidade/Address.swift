//
//  Address.swift
//  TF-LBD
//
//  Created by Geovanni Oliveira de Jesus on 17/10/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation
import RealmSwift
import UIKit

class Country: Object {
    
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var name: String = ""
}
class State: Object {
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var name: String = ""
    @objc dynamic var countryId: String = ""

}
class City: Object {
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var name: String = ""
    @objc dynamic var stateId: String = ""
}
class Neighborhood: Object {
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var name: String = ""
    @objc dynamic var cityId: String = ""
}

class Address: Object {
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var zipCode: String = ""
    @objc dynamic var addressDescription: String = ""
    @objc dynamic var number: Int = 0
    @objc dynamic var neighborhoodId: String = ""
    @objc dynamic var addressTypeId: String = ""
}

class AddressType: Object {
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var addressTypeDescription: String = ""
}
