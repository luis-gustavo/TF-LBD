//
//  InsertionOfAddress.swift
//  TF-LBD
//
//  Created by Luis Gustavo Avelino de Lima Jacinto on 19/10/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation
import RealmSwift

class InsertionOfAddress{
    
    func insertionOfCountry(realm: Realm) {
        let brasil = Country()
        brasil.name = "Brasil"
        
        try! realm.write {
            realm.add(brasil)
        }
    }
    
    func insertionOfState(realm: Realm){
        let saoPaulo = State()
        saoPaulo.name = "São Paulo"
        let brasil = realm.objects(Country.self).filter("name = 'Brasil'").first
        saoPaulo.country = brasil
        
        try! realm.write {
            realm.add(saoPaulo)
        }
        
    }
    
    func insertionOfCity(realm: Realm){
        let saoPaulo = City()
        saoPaulo.name = "São Paulo"
        let saoPauloState = realm.objects(State.self).filter("name = 'São Paulo'").first
        saoPaulo.state = saoPauloState
        
        try! realm.write {
            realm.add(saoPaulo)
        }
    }
    
    func insertionOfNeighborhood(realm: Realm){
        let saoPauloCity = realm.objects(City.self).filter("name = 'São Paulo'").first
        
        let barraFunda = Neighborhood()
        barraFunda.name = "Barra Funda"
        barraFunda.city = saoPauloCity
        
        let lapa = Neighborhood()
        lapa.name = "Lapa"
        lapa.city = saoPauloCity
        
        let morumbi = Neighborhood()
        morumbi.name = "Morumbi"
        morumbi.city = saoPauloCity
        
        try! realm.write {
            realm.add([barraFunda, lapa, morumbi])
        }
    }
    
    func insertionOfAddressType(realm: Realm){
        let enderecoComercial = AddressType()
        enderecoComercial.addressTypeDescription = "Comercial"
        
        let enderecoResidencial = AddressType()
        enderecoResidencial.addressTypeDescription = "Residencial"
        
        try! realm.write {
            realm.add([enderecoComercial, enderecoResidencial])
        }
    }
    
    func insertionOfAddress(realm: Realm){
        //Bairros
        let barrafunda = realm.objects(Neighborhood.self).filter("name = 'Barra Funda'").first
        let lapa = realm.objects(Neighborhood.self).filter("name = 'Lapa'").first
        let morumbi = realm.objects(Neighborhood.self).filter("name = 'Morumbi'").first
        //Tipos de endereço
        let enderecoComercial = realm.objects(AddressType.self).filter("addressTypeDescription = 'Comercial'").first
        let enderecoResidencial = realm.objects(AddressType.self).filter("addressTypeDescription = 'Residencial'").first
        
        //Enderecos
        let address1 = Address()
        address1.addressType = enderecoResidencial
        address1.neighborhood = barrafunda
        address1.addressDescription = "Barra Funda Conjunto 4 Casa 23"
        address1.number = 23
        address1.zipCode = "96385234"
        
        let address2 = Address()
        address2.addressType = enderecoResidencial
        address2.neighborhood = barrafunda
        address2.addressDescription = "Barra Funda Conjunto 2 Casa 13"
        address2.number = 13
        address2.zipCode = "96385235"
        
        let address3 = Address()
        address3.addressType = enderecoComercial
        address3.neighborhood = barrafunda
        address3.addressDescription = "Barra Funda Conjunto 7 Lote 4"
        address3.number = 4
        address3.zipCode = "96385237"
        
        let address4 = Address()
        address4.addressType = enderecoComercial
        address4.neighborhood = lapa
        address4.addressDescription = "Lapa Conjunto 7 Lote 4"
        address4.number = 4
        address4.zipCode = "96385238"
        
        let address5 = Address()
        address5.addressType = enderecoResidencial
        address5.neighborhood = lapa
        address5.addressDescription = "Lapa Conjunto 3 Edificio Villa Boa Apartamento 23"
        address5.number = 23
        address5.zipCode = "96385239"
        
        let address6 = Address()
        address6.addressType = enderecoResidencial
        address6.neighborhood = lapa
        address6.addressDescription = "Lapa Conjunto 2 Rua João Maia Casa 10"
        address6.number = 10
        address6.zipCode = "96385212"
        
        let address7 = Address()
        address7.addressType = enderecoResidencial
        address7.neighborhood = morumbi
        address7.addressDescription = "Morumbi Conjunto 2 Rua Cleber Santana Casa 10"
        address7.number = 10
        address7.zipCode = "96385213"
        
        let address8 = Address()
        address8.addressType = enderecoResidencial
        address8.neighborhood = morumbi
        address8.addressDescription = "Morumbi Conjunto 4 Casa 3"
        address8.number = 3
        address8.zipCode = "96385214"
        
        let address9 = Address()
        address9.addressType = enderecoComercial
        address9.neighborhood = morumbi
        address9.addressDescription = "Morumbi Conjunto 2 Lote 5"
        address9.number = 5
        address9.zipCode = "96385215"
        
        let address10 = Address()
        address10.addressType = enderecoComercial
        address10.neighborhood = morumbi
        address10.addressDescription = "Morumbi Conjunto 2 Lote 19"
        address10.number = 19
        address10.zipCode = "96385216"
        
        try! realm.write {
            realm.add([address1, address2, address3, address4, address5, address6, address7, address8, address9, address10])
        }
    }
    
    class func insertionOfAllAddresses(realm: Realm){
        let insertion = InsertionOfAddress()
        insertion.insertionOfCountry(realm: realm)
        insertion.insertionOfState(realm: realm)
        insertion.insertionOfCity(realm: realm)
        insertion.insertionOfNeighborhood(realm: realm)
        insertion.insertionOfAddressType(realm: realm)
        insertion.insertionOfAddress(realm: realm)
    }

}
