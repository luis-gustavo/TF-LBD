//
//  InsertionOfClients.swift
//  TF-LBD
//
//  Created by Geovanni Oliveira de Jesus on 24/10/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation
import RealmSwift

class InsertionOfClient {
    
    // MARK: - Insertion of Clients
    
    /**
     function to create the first client
     - parameter realm: realm instance to save the client
     */
    class func insertClient1(realm: Realm) {
        let client = Client()
        client.cpf = "815.343.117-00"
        client.name = "Samuel Martins Dias"
        client.email = "samuel.martins.dias@hotmail.com"
        client.sexo = (realm.objects(Sex.self).filter("sexType = 'Masculino'").first?.id)!
        client.phone = (realm.objects(Phone.self).filter("number = '11982039485'").first?.id)!
        client.address = (realm.objects(Address.self).filter("addressDescription = 'Morumbi Conjunto 4 Lote 30'").first?.id)!
        let fricace = realm.objects(MenuItem.self).filter("name = 'fricace'").first?.id
        client.favoriteMenuItems.append(fricace!)
        
        try! realm.write {
            realm.add(client)
        }
    }
    
    /**
     function to create the second client
     - parameter realm: realm instance to save the client
     */
    class func insertClient2(realm: Realm) {
        let client = Client()
        client.cpf = "555.186.764-17"
        client.name = "Kaua Pinto Cunha"
        client.email = "Kaua.kpc@outlook.com"

        client.sexo = (realm.objects(Sex.self).filter("sexType = 'Masculino'").first?.id)!
        client.phone = (realm.objects(Phone.self).filter("number = '11992384756'").first?.id)!
        client.address = (realm.objects(Address.self).filter("addressDescription = 'Barra Funda  Conjunto 20 Lote 30'").first?.id)!
        let fricace = realm.objects(MenuItem.self).filter("name = 'fricace'").first?.id
        client.favoriteMenuItems.append(fricace!)
        let tea = realm.objects(MenuItem.self).filter("name = 'cha'").first?.id
        client.favoriteMenuItems.append(tea!)
        
        try! realm.write {
            realm.add(client)
        }
    }
    
    /**
     function to create the third client
     - parameter realm: realm instance to save the client
     */
    class func insertClient3(realm: Realm) {
        let client = Client()
        client.cpf = "298.532.144-15"
        client.name = "Carlos Rocha Azevedo"
        client.email = "carlos.ra@gmail.com"
        client.sexo = (realm.objects(Sex.self).filter("sexType = 'Masculino'").first?.id)!
        client.phone = (realm.objects(Phone.self).filter("number = '11999876567'").first?.id)!
        client.address = (realm.objects(Address.self).filter("addressDescription = 'Barra Funda  Conjunto 20 Lote 45'").first?.id)!
        let fricace = realm.objects(MenuItem.self).filter("name = 'fricace'").first?.id
        client.favoriteMenuItems.append(fricace!)
        let cake = realm.objects(MenuItem.self).filter("name = 'bolo'").first?.id
        client.favoriteMenuItems.append(cake!)
        
        try! realm.write {
            realm.add(client)
        }
    }
    
    /**
     function to create the fourth client
     - parameter realm: realm instance to save the client
     */
    class func insertClient4(realm: Realm) {
        let client = Client()
        client.cpf = "777.482.385-96"
        client.name = "Mariana Correia Cavalcanti"
        client.email = "mariana.correia.cavalcanti@outlook.com.br"
        client.sexo = (realm.objects(Sex.self).filter("sexType = 'Feminino'").first?.id)!
        client.phone = (realm.objects(Phone.self).filter("number = '11999234756'").first?.id)!
        client.address = (realm.objects(Address.self).filter("addressDescription = 'Barra Funda  Conjunto 40 Lote 23'").first?.id)!
        let fricace = realm.objects(MenuItem.self).filter("name = 'fricace'").first?.id
        client.favoriteMenuItems.append(fricace!)
        let soda = realm.objects(MenuItem.self).filter("name = 'refrigerante'").first?.id
        client.favoriteMenuItems.append(soda!)
        
        
        try! realm.write {
            realm.add(client)
        }
    }
    
    /**
     function to create the fifth client
     - parameter realm: realm instance to save the client
     */
    class func insertClient5(realm: Realm) {
        let client = Client()
        client.cpf = "371.258.148-32"
        client.name = "Leila Cunha Barros"
        client.email = "LeilaCunhaBarros@gmail.com"
        client.sexo = (realm.objects(Sex.self).filter("sexType = 'Feminino'").first?.id)!
        client.phone = (realm.objects(Phone.self).filter("number = '11987654321'").first?.id)!
        client.address = (realm.objects(Address.self).filter("addressDescription = 'Lapa  Conjunto 53 Lote 29'").first?.id)!
        let fricace = realm.objects(MenuItem.self).filter("name = 'fricace'").first?.id
        client.favoriteMenuItems.append(fricace!)
        let tea = realm.objects(MenuItem.self).filter("name = 'cha'").first?.id
        client.favoriteMenuItems.append(tea!)
        let cake = realm.objects(MenuItem.self).filter("name = 'bolo'").first?.id
        client.favoriteMenuItems.append(cake!)

        try! realm.write {
            realm.add(client)
        }
    }

    // MARK: - insertion of Phones
    
    /**
     function to create the phone of the first client
     - parameter realm: realm instance to save the phone number
     */
    class func insertPhoneClient1(realm: Realm) {
        let phone = Phone()
        phone.number = "11982039485"
        
        try! realm.write {
            realm.add(phone)
        }
        
    }
    
    /**
     function to create the phone of the second client
     - parameter realm: realm instance to save the phone number
     */
    class func insertPhoneClient2(realm: Realm) {
        let phone = Phone()
        phone.number = "11992384756"
        
        try! realm.write {
            realm.add(phone)
        }
    }
    
    /**
     function to create the phone of the third client
     - parameter realm: realm instance to save the phone number
     */
    class func insertPhoneClient3(realm: Realm) {
        let phone = Phone()
        phone.number = "11999876567"
        
        try! realm.write {
            realm.add(phone)
        }
    }
    
    /**
     function to create the phone of the fourth client
     - parameter realm: realm instance to save the phone number
     */
    class func insertPhoneClient4(realm: Realm) {
        let phone = Phone()
        phone.number = "11999234756"
        
        try! realm.write {
            realm.add(phone)
        }
    }
    
    /**
     function to create the phone of the fifth client
     - parameter realm: realm instance to save the phone number
     */
    class func insertPhoneClient5(realm: Realm) {
        let phone = Phone()
        phone.number = "11987654321"
        
        try! realm.write {
            realm.add(phone)
        }
    }
    
    //MARK: - insertion of Address
    
    /**
     function to create the address of the first client
     - parameter realm: realm instance to save the address
     */
    class func insertAddresClient1(realm: Realm) {

        let morumbi = realm.objects(Neighborhood.self).filter("name = 'Morumbi'").first
       
        let enderecoResidencial = realm.objects(AddressType.self).filter("addressTypeDescription = 'Residencial'").first
        
        let address10 = Address()
        address10.addressTypeId = (enderecoResidencial?.id)!
        address10.neighborhoodId = (morumbi?.id)!
        address10.addressDescription = "Morumbi Conjunto 4 Lote 30"
        address10.number = 19
        address10.zipCode = "96385219"
        
        try! realm.write {
            realm.add(address10)
        }
    }
    
    /**
     function to create the address of the second client
     - parameter realm: realm instance to save the address
     */
    class func insertAddressClient2(realm:Realm) {
        let barrafunda = realm.objects(Neighborhood.self).filter("name = 'Barra Funda'").first
        
        let enderecoResidencial = realm.objects(AddressType.self).filter("addressTypeDescription = 'Residencial'").first
       
        let address10 = Address()
        address10.addressTypeId = (enderecoResidencial?.id)!
        address10.neighborhoodId = (barrafunda?.id)!
        address10.addressDescription = "Barra Funda  Conjunto 20 Lote 30"
        address10.number = 10
        address10.zipCode = "86385219"
        
        try! realm.write {
            realm.add(address10)
        }
    }
    
    /**
     function to create the address of the third client
     - parameter realm: realm instance to save the address
     */
    class func insertAddressClient3(realm:Realm) {
        
        let enderecoResidencial = realm.objects(AddressType.self).filter("addressTypeDescription = 'Residencial'").first
        
        let lapa = realm.objects(Neighborhood.self).filter("name = 'Lapa'").first
        
        let address10 = Address()
        address10.addressTypeId = (enderecoResidencial?.id)!
        address10.neighborhoodId = (lapa?.id)!
        address10.addressDescription = "Barra Funda  Conjunto 20 Lote 45"
        address10.number = 10
        address10.zipCode = "86385219"
        
        try! realm.write {
            realm.add(address10)
        }
    }
    
    /**
     function to create the address of the fourth client
     - parameter realm: realm instance to save the address
     */
    class func insertAddressClient4(realm:Realm) {
        let barrafunda = realm.objects(Neighborhood.self).filter("name = 'Barra Funda'").first
        
        let enderecoResidencial = realm.objects(AddressType.self).filter("addressTypeDescription = 'Residencial'").first
        
        let address10 = Address()
//        address10.addressType = enderecoResidencial
//        address10.neighborhood = barrafunda
        address10.addressTypeId = (enderecoResidencial?.id)!
        address10.neighborhoodId = (barrafunda?.id)!
        address10.addressDescription = "Barra Funda  Conjunto 40 Lote 23"
        address10.number = 20
        address10.zipCode = "86385419"
        
        try! realm.write {
            realm.add(address10)
        }
    }
    
    /**
     function to create the address of the fifth client
     - parameter realm: realm instance to save the address
     */
    class func insertAddressClient5(realm:Realm) {
        
        let enderecoResidencial = realm.objects(AddressType.self).filter("addressTypeDescription = 'Residencial'").first
        
        let lapa = realm.objects(Neighborhood.self).filter("name = 'Lapa'").first
        
        let address10 = Address()
//        address10.addressType = enderecoResidencial
//        address10.neighborhood = lapa
        address10.addressTypeId = (enderecoResidencial?.id)!
        address10.neighborhoodId = (lapa?.id)!
        address10.addressDescription = "Lapa  Conjunto 53 Lote 29"
        address10.number = 28
        address10.zipCode = "86385519"
        
        try! realm.write {
            realm.add(address10)
        }
    }
    
    class func createAllPhones(realm: Realm) {
        insertPhoneClient1(realm: realm)
        insertPhoneClient2(realm: realm)
        insertPhoneClient3(realm: realm)
        insertPhoneClient4(realm: realm)
        insertPhoneClient5(realm: realm)
    }
    class func createAllAddresses(realm: Realm) {
        insertAddresClient1(realm: realm)
        insertAddressClient2(realm: realm)
        insertAddressClient3(realm: realm)
        insertAddressClient4(realm: realm)
        insertAddressClient5(realm: realm)
    }
    // MARK: - criation of all the clients at once
    
    /**
     function to create all the clients
     - parameter realm: realm instance to save the address
     */
    class func createAllClients(realm: Realm) {
        insertClient1(realm: realm)
        insertClient2(realm: realm)
        insertClient3(realm: realm)
        insertClient4(realm: realm)
        insertClient5(realm: realm)
    }
}
