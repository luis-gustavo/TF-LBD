//
//  InsertionOfTable.swift
//  TF-LBD
//
//  Created by Geovanni Oliveira de Jesus on 24/10/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation
import RealmSwift

class InsertionOfTable {
    
    /**
     Function to create a table for 4 people
     - parameter realm: realm instance to save the table into the database
     */
    
    class func insertTableForFourOnGroundFloor(realm: Realm) {
        
        let table = Table()
        table.id = 1
        table.floor = 0
        table.capacity = 4
        
        try! realm.write {
            realm.add(table)
        }
    }
    
    /**
     Function to create a table for 2 people on the ground floor
     - parameter realm: realm instance to save the table into the database
     */
    
    class func insertTableFor2OnGroundFloor(realm: Realm) {
        let table = Table()
        table.id = 2
        table.capacity = 2
        table.floor = 0
        
        try! realm.write {
            realm.add(table)
        }
    }
    
    /**
     function to create a table for 8 people on the groud floor
     - parameter realm: realm instance to save the table into the database
     */
   class func insertTableFor8OnTheGroundFloor(realm: Realm) {
        let table = Table()
        table.id = 3
        table.capacity = 8
        table.floor = 0
        
        try! realm.write {
            realm.add(table)
        }
    }
    
    /**
     function to creat table for 10 people on the ground floor
     - parameter realm: realm instance to save the table into the database
     */
    
    class func insertTableFor10OntheGroundFloor(realm: Realm) {
        
        let table = Table()
        table.id = 4
        table.capacity = 10
        table.floor = 0
        
        try! realm.write {
            realm.add(table)
        }
    }
    
    /**
     Function to create a table for 4 people
     - parameter realm: realm instance to save the table into the database
     */
    
   class func insertTableForFourOnFirstFloor(realm: Realm) {
        
        let table = Table()
        table.id = 5
        table.floor = 1
        table.capacity = 4
        
        try! realm.write {
            realm.add(table)
        }
    }
    
    /**
     Function to create a table for 2 people on the first floor
     - parameter realm: realm instance to save the table into the database
     */
    
    class func insertTableFor2OnFirstFloor(realm: Realm) {
        let table = Table()
        table.id = 6
        table.capacity = 2
        table.floor = 1
        
        try! realm.write {
            realm.add(table)
        }
    }
    
    /**
     function to create a table for 8 people on the first floor
     - parameter realm: realm instance to save the table into the database
     */
    class func insertTableFor8OnTheFirstFloor(realm: Realm) {
        let table = Table()
        table.id = 7
        table.capacity = 8
        table.floor = 1
        
        try! realm.write {
            realm.add(table)
        }
    }
    
    /**
     function to creat table for 10 people on the first floor
     - parameter realm: realm instance to save the table into the database
     */
    
   class func insertTableFor10OntheFirstFloor(realm: Realm) {
        
        let table = Table()
        table.id = 8
        table.capacity = 10
        table.floor = 1
        
        try! realm.write {
            realm.add(table)
        }
    }
    
    /**
     Function to create all the tables in one step
     - parameter realm: realm instance to save the table into the database
     */
    class func insertAllTables(realm: Realm) {
        //insertion for the ground floor
        
        insertTableFor2OnGroundFloor(realm: realm)
        insertTableForFourOnGroundFloor(realm: realm)
        insertTableFor8OnTheGroundFloor(realm: realm)
        insertTableFor10OntheGroundFloor(realm: realm)
        
        //insertion for the first floor
        
        insertTableFor2OnFirstFloor(realm: realm)
        insertTableForFourOnFirstFloor(realm: realm)
        insertTableFor8OnTheFirstFloor(realm: realm)
        insertTableFor10OntheFirstFloor(realm: realm)
    }
}
