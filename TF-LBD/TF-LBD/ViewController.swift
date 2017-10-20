//
//  ViewController.swift
//  TF-LBD
//
//  Created by Luis Gustavo Avelino de Lima Jacinto on 09/10/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import UIKit
import RealmSwift

class Lala {
    var id = UUID().uuidString
    var name = "asd"
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let realm = try! Realm()
        
        
        try! realm.write {
            realm.deleteAll()
        }
        
        InsertionOfAddress.insertionOfAllAddresses(realm: realm)
        
        let a = realm.objects(Address.self).toArray()
        print(a.count)
        for b in a{
            print(b)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
