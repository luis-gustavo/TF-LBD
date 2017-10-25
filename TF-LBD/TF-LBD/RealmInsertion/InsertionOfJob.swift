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
    
    /**
     function to create the job of waiter
     - parameter realm: realm instance to save the job
     */
    class func createWaiter(realm: Realm) {
        
        let waiter = Job()
        waiter.jobDescription = "Garçom"
        
        try! realm.write {
            realm.add(waiter)
        }
    }
    
    /**
     function to create the job of Cooker
     - parameter realm: realm instance to save the job
     */
    class func createCooker(realm: Realm) {
        let cooker = Job()
        cooker.jobDescription = "Cozinheiro"
        
        try! realm.write {
            realm.add(cooker)
        }
    }
    
    /**
     function to create the job of barman
     - parameter realm: realm instance to save the job
     */
    class func createBarMan(realm: Realm) {
        
        let barman = Job()
        barman.jobDescription = "Barman"
        
        try! realm.write {
            realm.add(barman)
        }
    }
    
    /**
     function to create the job of manager
     - parameter realm: realm instance to save the job
     */
    class func createManager(realm: Realm) {
        let manager = Job()
        manager.jobDescription = "Gerente"
        
        try! realm.write {
            realm.add(manager)
        }
    }
    
    /**
     function to create the all the jobs
     - parameter realm: realm instance to save the job
     */
    class func creationOfAllJobs(realm: Realm) {
        createBarMan(realm: realm)
        createCooker(realm: realm)
        createWaiter(realm: realm)
        createManager(realm: realm)
    }
    
}
