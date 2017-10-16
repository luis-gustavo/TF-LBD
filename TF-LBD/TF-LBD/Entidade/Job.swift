//
//  Profession.swift
//  TF-LBD
//
//  Created by Geovanni Oliveira de Jesus on 11/10/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation
import RealmSwift

class Job: Object {
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var jobDescription: String = ""
}
