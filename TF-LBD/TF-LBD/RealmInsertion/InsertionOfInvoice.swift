//
//  InsertionOfInvoice.swift
//  TF-LBD
//
//  Created by Geovanni Oliveira de Jesus on 25/10/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation
import RealmSwift

class InsertionOfInvoince {

    /**
     Function to create the first Invoice
     - parameter realm: realm intance to save the invoice on the database
     */
    
   class func createTheFirstInvoice(realm: Realm) {
        let invoice = Invoice()
    invoice.companyAddressId = (realm.objects(Address.self).filter("addressDescription = 'Morumbi Conjunto 4 Lote 40-44'").first?.id)!
    invoice.billId = (realm.objects(Bill.self).filter("id = 1").first?.id)!
        invoice.totalValue = (invoice.bill?.calculateTotal())!

        try! realm.write {
            realm.add(invoice)
        }
    }
    
    /**
     Function to create the second Invoice
     - parameter realm: realm intance to save the invoice on the database
     */
    
   class func createTheSecondInvoice(realm: Realm) {
        let invoice = Invoice()
    invoice.companyAddressId = (realm.objects(Address.self).filter("addressDescription = 'Morumbi Conjunto 4 Lote 40-44'").first?.id)!
    invoice.billId = (realm.objects(Bill.self).filter("id = 2").first?.id)!
        invoice.totalValue = (invoice.bill?.calculateTotal())!
        try! realm.write {
            realm.add(invoice)
        }
    }

    /**
     Function to create all the Invoices
     - parameter realm: realm intance to save the invoices on the database
     */
    
    class func createAllInvoices(realm: Realm) {
        createTheFirstInvoice(realm: realm)
        createTheSecondInvoice(realm: realm)
    }
}

