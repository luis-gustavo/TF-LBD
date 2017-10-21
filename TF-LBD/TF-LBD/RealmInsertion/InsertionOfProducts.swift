//
//  InsertionOfProducts.swift
//  TF-LBD
//
//  Created by Geovanni Oliveira de Jesus on 19/10/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation
import RealmSwift

class InsertionOfProducts {
    
    //função genérica para criar produtos específicos
//    func addNewProduct(realm: Realm,
//                       name: String,
//                       isPerishable: Bool,
//                       expirationDate: Date,
//                       quantity: Float,
//                       amount: Amount) {
//
//        let product = Product()
//        product.name = name
//        product.isPerishable = isPerishable
//        product.expirationDate = expirationDate
//        product.quantity = quantity
//        product.amount = amount
//
//        try! realm.write {
//            realm.add(product)
//        }
//    }
    

    
    // MARK: - insertion of specific products
    
    /**
     Function to create a new product: the green Corn
     - parameter realm: instance of realm to write the product green corn
     */
   class func insertionOfGreenCorn(realm: Realm) {
        let greenCorn = Product()
        greenCorn.name = "milho verde"
        greenCorn.isPerishable = false
        greenCorn.expirationDate = returnExpirationDateFromNow(day: 2, month: 1, year: 1)
        greenCorn.quantity = 200.0
        greenCorn.amount = realm.objects(Amount.self).filter("amountDesctiption = 'grama'").first
        
        try! realm.write {
            realm.add(greenCorn)
        }
        
    }
    
    /**
         Function to create a new instance of milkCream
     - parameter realm: realm instance to write the product milk creamm
     */
    class func insertionOfMilkCream(realm: Realm) {
        let milkCream = Product()
        milkCream.name = "creme de leite"
        milkCream.isPerishable = false
        milkCream.expirationDate = returnExpirationDateFromNow(day: 20, month: 3, year: 2)
        milkCream.quantity = 900.0
        milkCream.amount = realm.objects(Amount.self).filter("amountDescription = 'grama'").first
        
        try! realm.write {
            realm.add(milkCream)
        }
    }
    
    /**
         Function to create a new product called creamy cheese
     - parameter realm: realm instance to save the product creamy cheese
     */
    
    class func insertionOfCreamyCheese(realm: Realm) {
        let creamyCheese = Product()
        creamyCheese.name = "requeijao"
        creamyCheese.isPerishable = true
        creamyCheese.expirationDate = returnExpirationDateFromNow(day: 4, month: 2, year: 0)
        creamyCheese.quantity = 1.0
        creamyCheese.amount = realm.objects(Amount.self).filter("amountDescription = 'kg'").first
        
        try! realm.write {
            realm.add(creamyCheese)
        }
    }
    
   
    /**
         Function to create chicken breast to the restaurant
     - parameter realm: realm instance to sabe the product
     
     */
    class func insertionOfChickenBreast(realm: Realm) {
        let chickenBreast = Product()
        chickenBreast.name = "peito de frango"
        chickenBreast.isPerishable = true
        chickenBreast.expirationDate = returnExpirationDateFromNow(day: 4, month: 4, year: 0)
        chickenBreast.quantity = 50.0
        chickenBreast.amount = realm.objects(Amount.self).filter("amountDescription = 'kg'").first
        
        try! realm.write {
            realm.add(chickenBreast)
        }
    }
    
    /**
     Function to create a new product, milk
     - parameter realm: realm instance to save the product creamy cheese
     */
    
    class func insertionOfMilk(realm: Realm) {
        let milk = Product()
        milk.name = "leite"
        milk.isPerishable = true
        milk.expirationDate = returnExpirationDateFromNow(day: 4, month: 2, year: 0)
        milk.quantity = 1.0
        milk.amount = realm.objects(Amount.self).filter("amountDescription = 'kg'").first
        
        try! realm.write {
            realm.add(milk)
        }
    }
    
    /**
     Function to create a new product, milk
     - parameter realm: realm instance to save the product creamy cheese
     */
    
    class func insertionOfFlour(realm: Realm) {
        let flour = Product()
        flour.name = "fariha"
        flour.isPerishable = true
        flour.expirationDate = returnExpirationDateFromNow(day: 4, month: 2, year: 0)
        flour.quantity = 1.0
        flour.amount = realm.objects(Amount.self).filter("amountDescription = 'kg'").first
        
        try! realm.write {
            realm.add(flour)
        }
    }
    
    /**
     Function to create a new product, milk
     - parameter realm: realm instance to save the product creamy cheese
     */
    
    class func insertionOfEgg(realm: Realm) {
        let egg = Product()
        egg.name = "Ovo"
        egg.isPerishable = true
        egg.expirationDate = returnExpirationDateFromNow(day: 4, month: 2, year: 0)
        egg.quantity = 1.0
        egg.amount = realm.objects(Amount.self).filter("amountDescription = 'kg'").first
        
        try! realm.write {
            realm.add(egg)
        }
    }
    
    
    /**
     Function to return the expiring date from now to how many days, months and years the product will expire
     - parameter day: amount of days that the product will expire from now
     - parameter month: amount of months that the product will expire from now
     - parameter year: amount of years that the product will expire from now
     - Returns:  date formed from today + how many days, months and years that the product will expire
     */
    
    class func returnExpirationDateFromNow(day: Int, month: Int, year: Int) -> Date {
        var components = DateComponents()
        
        components.setValue(1, for: .year)
        components.setValue(1, for: .month)
        components.setValue(1, for: .day)
        let date: Date = Date()
        let expirationDate = Calendar.current.date(byAdding: components, to: date)
        
        return expirationDate!
    }
    
    /**
     Function to create all the products at once
     
     - parameter realm: realm instance to save all the instances of products
     */
    
    class func createAllProducts(realm: Realm) {
        
        insertionOfEgg(realm: realm)
        insertionOfMilk(realm: realm)
        insertionOfFlour(realm: realm)
        insertionOfGreenCorn(realm: realm)
        insertionOfChickenBreast(realm: realm)
        insertionOfMilkCream(realm: realm)
    }
}

//let pups = realm.objects(Dog.self).filter("age < 2")
class InsertOfAmount {

    /**
     Function to create the amount of kg
     - parameter realm:  relam instance to write the amount created
     */
   class func addKg(realm: Realm) {
        let kg = Amount()
        kg.amountDescription = "kg"
        
        try! realm.write {
            realm.add(kg)
        }
    }
    
    /**
         Function to create the amount of gram
     - parameter realm:  relam instance to write the amount created
     */
   class func addGram(realm: Realm) {
        let gram = Amount()
        gram.amountDescription = "grama"
        
        try! realm.write {
            realm.add(gram)
        }
    }
    
    /**
     Function to create the amount of Liter
     - parameter realm:  relam instance to write the amount created
     */
   class func addLiter(realm: Realm){
        
        let liter = Amount()
        liter.amountDescription = "Litro"
        
        try! realm.write {
            realm.add(liter)
        }
        
    }
    
    /**
     Function to create the amount of ml
     - parameter realm:  relam instance to write the amount created
     */
    class func addMl(realm: Realm) {
        
        let ml = Amount()
        ml.amountDescription = "ml"
        
        try! realm.write {
            realm.add(ml)
        }
    }
    
    /**
         Function to create all the amounts at once
     - parameter realm: realm instance to write the instances of amount
 
     */
    
    class func createAllAmounts(realm:Realm) {
        addMl(realm: realm)
        addLiter(realm: realm)
        addKg(realm: realm)
        addGram(realm: realm)
    }
}

