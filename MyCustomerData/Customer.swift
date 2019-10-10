//
//  Customer.swift
//  MyCustomerData
//
//  Created by James Cavanaugh on 10/10/19.
//  Copyright © 2019 James Cavanaugh. All rights reserved.
//

import Foundation

class Customer{
    var FirstName: String
    var LastName: String
    var Address: String
    var Address2: String
    var City: String
    var State: String
    var Zip: Int
    

    init(){
        self.FirstName = ""
        self.LastName = ""
        self.Address = ""
        self.Address2 = ""
        self.City = ""
        self.State = ""
        self.Zip = 0
        
    }
    
    // init constructor override with 7 params
    init(fname: String, lname: String, addr: String, addr2: String, c: String, st: String, z: Int){
        self.FirstName = fname
        self.LastName = lname
        self.Address = addr
        self.Address2 = addr2
        self.City = c
        self.State = st
        self.Zip = z
    }
    
    func printCustomer(){
        print("FirstName: " + FirstName)
        print("LastName" + LastName)
        print("Address: " + Address)
        print("Address2: " + Address2)
        print("City: " + City)
        print("State: " + State)
        print("Zip: " + String(Zip))
    }

    
}
