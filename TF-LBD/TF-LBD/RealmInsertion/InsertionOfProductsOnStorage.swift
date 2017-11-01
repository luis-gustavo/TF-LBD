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
    
    var products = InsertionOfProducts()
    
    /**
     Function to create a new instance of a storage
     - parameter realm: realm instance to save the storage into the database
     */
    
    class func insertStorage(realm: Realm) {
        let storage = Storage()
        storage.name = "principal"
        
        try! realm.write {
            realm.add(storage)
        }
    }
    /**
     function to insert a product into a storage
     - parameter realm: realm instance to save the changes into the database
     - parameter product: product to be inserted into the storage
     - parameter storage: storage to put the products inside it
     */
    class func insertProductsOnStorage(realm: Realm, product: Product, storage: Storage) {
        
        
        try! realm.write {
            storage.products.append(product.id)
            realm.add(storage)
        }
        
    }
    
    /**
     Function to insert all the products into the main storage
     - parameter realm: realm instance to save the products and the storage inside it
     - parameter storage: the main storage to save the products into it
     */
    class func insertionOfAllProductsOnStorage(realm: Realm, storage: Storage) {
        
        let corn = realm.objects(Product.self).filter("name = 'milho verde'").first!
        insertProductsOnStorage(realm: realm,
                                product: corn,
                                storage: storage )
        
        let milkCream = realm.objects(Product.self).filter("name = 'creme de leite'").first!
        insertProductsOnStorage(realm: realm,
                                product: milkCream,
                                storage: storage)
        
        let creamyCheese = realm.objects(Product.self).filter("name = 'requeijao'").first!
        insertProductsOnStorage(realm: realm,
                                product: creamyCheese,
                                storage: storage)
        
        let chickenBreast = realm.objects(Product.self).filter("name = 'peito de frango'").first!
        insertProductsOnStorage(realm: realm,
                                product: chickenBreast,
                                storage: storage)
        
        let milk = realm.objects(Product.self).filter("name = 'leite'").first!
        insertProductsOnStorage(realm: realm,
                                product: milk,
                                storage: storage)
        
        let flour = realm.objects(Product.self).filter("name = 'farinha'").first!
        insertProductsOnStorage(realm: realm,
                                product: flour,
                                storage: storage)
        
        let egg = realm.objects(Product.self).filter("name = 'ovo'").first!
        insertProductsOnStorage(realm: realm,
                                product: egg,
                                storage: storage)
    }
    
}
