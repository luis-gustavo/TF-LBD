//
//  Employee.swift
//  TF-LBD
//
//  Created by Geovanni Oliveira de Jesus on 11/10/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation
import RealmSwift

class Employee: Object {
    
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var cpf: String = ""
    @objc dynamic var rgId: String = ""
    @objc dynamic var name: String = ""
    @objc dynamic var parentsId: String = ""
    @objc dynamic var sexId: String = ""
    @objc dynamic var civilStateId: String = ""
    @objc dynamic var jobId: String = ""
    @objc dynamic var email: String = ""
    @objc dynamic var addressId: String? = ""
    @objc dynamic var phoneId: String = ""
    @objc dynamic var naturalityId: String = ""
    
}

class Rg: Object {
    
    @objc dynamic var number: String = ""
    @objc dynamic var expeditionDate: Date = Date()
}

class Parents: Object {
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var fatherName: String = ""
    @objc dynamic var motherName: String = ""
}

class Sex: Object {
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var sexType: String = ""
}

class CivilState: Object {
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var civilStateDescription: String = ""
}

class Phone: Object {
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var number: String = ""
}

class SchoolDegree: Object {
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var schoolDegreeDescription: String = ""
}
