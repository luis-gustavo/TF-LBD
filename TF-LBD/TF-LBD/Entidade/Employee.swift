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
    @objc dynamic var rg: Rg? = Rg()
    @objc dynamic var name: String = ""
    @objc dynamic var parents: Parents? = Parents()
    @objc dynamic var sex: Sex? = Sex()
    @objc dynamic var civilState: CivilState? = CivilState()
    @objc dynamic var job: Job? = Job()
    @objc dynamic var email: String = ""
    @objc dynamic var address: Address? = Address()
    @objc dynamic var phone: Phone? = Phone()
    @objc dynamic var naturality: City? = City()
    
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
    @objc dynamic var number: String = ""
    @objc dynamic var ownerEmployee: Employee?
    @objc dynamic var owner2Client: Client?
    @objc dynamic var isEmployee: Bool = false
}

class SchoolDegree: Object {
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var schoolDegreeDescription: String = ""
}
