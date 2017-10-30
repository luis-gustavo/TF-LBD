//
//  ViewController.swift
//  TF-LBD
//
//  Created by Luis Gustavo Avelino de Lima Jacinto on 09/10/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Instiating Realm
        let realm = try! Realm()
        
        //cleaning the database
        try! realm.write {
            realm.deleteAll()
        }
        
        // insertion of Addresses
        InsertionOfAddress.insertionOfAllAddresses(realm: realm)

        // insertion of Jobs
        InsertionOfJob.creationOfAllJobs(realm: realm)
        
        //insertion of employees
        InsertionOfEmployee.insertionOfAllEmployees(realm: realm)
        
        //insertion of amounts
        InsertOfAmount.createAllAmounts(realm: realm)
        
        // insertion of products
        InsertionOfProducts.createAllProducts(realm: realm)
        
        // creation of the storage
        InsertionOfProductsOnStorage.insertStorage(realm: realm)
        let mainStorage = realm.objects(Storage.self).filter("name = 'principal'").first
        InsertionOfProductsOnStorage.insertionOfAllProductsOnStorage(realm: realm, storage: mainStorage!)
        
        //insertion of responsable sector to make the dish
        InsertionOfMenuItem.insertionOfSectorResponsableToMake(realm: realm)

        //insertion of items for the menu
        InsertionOfMenuItem.createAllItemsForTheMenu(realm: realm)

        //insertion of Menu
        InsertionOfMenu.insertMainManuAndDependencies(realm: realm)

        //insertion of Tables
        InsertionOfTable.insertAllTables(realm: realm)

        //insertion of Clients
        InsertionOfClient.createAllClients(realm: realm)

        //insertion of Orders
        InsertionOfOrder.createAllOrders(realm: realm)

        //insertion of the bills
        InsertionOfBill.creationOftheBills(realm: realm)

        //creation of the invoices
        InsertionOfInvoince.createAllInvoices(realm: realm)

    }

}

extension Results {
    
    func toArray() -> [T] {
        return self.map{$0}
    }
}

extension RealmSwift.List {
    
    func toArray() -> [T] {
        return self.map{$0}
    }
}
