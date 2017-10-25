//
//  Pedido.swift
//  TF-LBD
//
//  Created by Geovanni Oliveira de Jesus on 09/10/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation
import RealmSwift

class Order: Object {
    @objc dynamic var id: Int = 0
    var menuItems = List<MenuItem>()
    @objc dynamic var table: Table? = Table()
    @objc dynamic var waiter: Employee?
    
    
    /**
     Function to calculate the subtotal of an order
     - returns: the calculated amount
     */
    func calculateSubTotal() -> Float{
        var subTotal: Float = 0.0
        
        for item in menuItems {
            subTotal = subTotal + item.price
        }
        
        return subTotal
    }
}


