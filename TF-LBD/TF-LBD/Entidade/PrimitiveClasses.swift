//
//  PrimitiveClasses.swift
//  TF-LBD
//
//  Created by Luis Gustavo Avelino de Lima Jacinto on 01/11/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import RealmSwift
import Foundation

class IntObject: Object {
    @objc dynamic var value: Int = Int()
    
    convenience init(intValue: Int){
        self.init()
        value = intValue
    }
}

class StringObject: Object {
    @objc dynamic var value: String = ""
    
    convenience init(stringValue: String){
        self.init()
        value = stringValue
    }
}

extension String {
    func toStringObject() -> StringObject {
        return StringObject(stringValue: self)
    }
}
extension Sequence where Iterator.Element == String {
    func toStringObjects() -> List<StringObject> {
        let list = List<StringObject>()
        for s in self {
            list.append(s.toStringObject())
        }
        return list
    }
}
