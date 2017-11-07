//
//  Conta.swift
//  TF-LBD
//
//  Created by Geovanni Oliveira de Jesus on 09/10/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation
import RealmSwift

class Bill: Object {
    
    @objc dynamic var id: Int = 0
//    var orders = List<Order>()
    //var orders = [Int]()
    var orders: [Int] {
        get {
            return _backingOrders.map { $0.intValue }
        }
        set {
            _backingOrders.removeAll()
            _backingOrders.append(objectsIn: newValue.map({ RealmInt(value: [$0]) }))
            //appendContentsOf(newValue.map { RealmString(value: [$0]) })
        }
    }
    let _backingOrders = List<RealmInt>()
    
    override class func ignoredProperties() -> [String] {
        return ["orders"]
    }
//    @objc dynamic var table: Table? = Table()
    @objc dynamic var tableId: Int = Int()
//    @objc dynamic var client: Client?
    @objc dynamic var clientId: String?
    @objc dynamic var cpfClientNotRegistered: String?
    
    /**
     function to calculate the total of a bill
     - returns: the total of the bill in Float
     */
    func calculateTotal() -> Float {

        var total: Float = 0.0
        
        for order in orders {
            print(order)
            let item = realm?.objects(Order.self).filter("id = \(order)").first
            total += (item?.calculateSubTotal())!
            
        }

        return total
    }
}
