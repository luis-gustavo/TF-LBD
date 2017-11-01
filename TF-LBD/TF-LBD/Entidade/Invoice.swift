//
//  NotaFiscal.swift
//  TF-LBD
//
//  Created by Geovanni Oliveira de Jesus on 09/10/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation
import RealmSwift

class Invoice: Object {
    
    @objc dynamic var cnpj: String = "77.123.159/001-28"
    @objc dynamic var companyName: String = "O Comilão"
//    @objc dynamic var companyAddress: Address? = Address()
    @objc dynamic var companyAddressId: String = ""
    @objc dynamic var date: Date = Date()
    @objc dynamic var totalValue: Float = 0.0
//    @objc dynamic var bill: Bill? = Bill()
    @objc dynamic var billId: Int = Int()
}

