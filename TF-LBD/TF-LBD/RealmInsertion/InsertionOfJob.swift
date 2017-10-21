//
//  InsertionOfJob.swift
//  TF-LBD
//
//  Created by Geovanni Oliveira de Jesus on 19/10/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation
import RealmSwift

class InsertionOfJob {
    class func createWaiter(realm: Realm) {
        
        let waiter = Job()
        waiter.jobDescription = "Garçom"
        
        try! realm.write {
            realm.add(waiter)
        }
    }
    
    class func createCooker(realm: Realm) {
        let cooker = Job()
        cooker.jobDescription = "Cozinheiro"
        
        try! realm.write {
            realm.add(cooker)
        }
    }
    
    class func createBarMan(realm: Realm) {
        
        let barman = Job()
        barman.jobDescription = "Barman"
        
        try! realm.write {
            realm.add(barman)
        }
    }
    
    
    class func createManager(realm: Realm) {
        let manager = Job()
        manager.jobDescription = "Gerente"
        
        try! realm.write {
            realm.add(manager)
        }
    }
    
    class func creationOfAllJobs(realm: Realm) {
        createBarMan(realm: realm)
        createCooker(realm: realm)
        createWaiter(realm: realm)
        createManager(realm: realm)
    }
    //let pups = realm.objects(Dog.self).filter("age < 2")
}
