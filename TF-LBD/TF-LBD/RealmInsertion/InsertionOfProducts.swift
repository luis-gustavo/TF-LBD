//
//  InsertionOfProducts.swift
//  TF-LBD
//
//  Created by Geovanni Oliveira de Jesus on 19/10/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation
import RealmSwift

class InsertionOfProducts {
    
    //função genérica para criar produtos específicos
    func addNewProduct(realm: Realm,
                       name: String,
                       isPerishable: Bool,
                       expirationDate: Date,
                       quantity: Float,
                       amount: Amount) {
        
        let product = Product()
        product.name = name
        product.isPerishable = isPerishable
        product.expirationDate = expirationDate
        product.quantity = quantity
        product.amount = amount
        
        try! realm.write {
            realm.add(product)
        }
    }
}

class InsertOfAmount {

    func addKg(realm: Realm) {
        let kg = Amount()
        kg.amountDescription = "kg"
        
        try! realm.write {
            realm.add(kg)
        }
    }
    
    func addGram(realm: Realm) {
        let gram = Amount()
        gram.amountDescription = "grama"
        
        try! realm.write {
            realm.add(gram)
        }
    }
    
    func addLiter(realm: Realm){
        
        let liter = Amount()
        liter.amountDescription = "Litro"
        
        try! realm.write {
            realm.add(liter)
        }
        
    }
    
    func addMl(realm: Realm) {
        
        let ml = Amount()
        ml.amountDescription = "ml"
        
        try! realm.write {
            realm.add(ml)
        }
    }
}

