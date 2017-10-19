//
//  InsertionOfProductsOnStorage.swift
//  TF-LBD
//
//  Created by Geovanni Oliveira de Jesus on 19/10/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation
import RealmSwift

class InsertionOfProductsOnStorage {
    
    var storage = Storage()
    
    func insertProductsOnStorage(realm: Realm, product: Product) {
        
        storage.products.append(product)
        try! realm.write {
            realm.add(storage)
        }
        
    }
    
}
