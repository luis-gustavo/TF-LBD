//
//  Pessoa.swift
//  TF-LBD
//
//  Created by Geovanni Oliveira de Jesus on 09/10/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Realm
import Foundation
import RealmSwift

class Person: Object {
    
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var cpf: String = ""
    @objc dynamic var rg: Rg = Rg()
    @objc dynamic var name: String = ""
    @objc dynamic var parents: Parents = Parents()
    @objc dynamic var sex: Sex = Sex()
    @objc dynamic var civilState: CivilState = CivilState()
    @objc dynamic var job: Job = Job()
    @objc dynamic var email: String = ""
    
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

class Phone: Object{
    @objc dynamic var number: String = ""
    @objc dynamic var owner: Person?
}

class 
