//
//  CustomerListManager.swift
//  MyCustomerData
//
//  Created by James Cavanaugh on 10/10/19.
//  Copyright © 2019 James Cavanaugh. All rights reserved.
//

import Foundation

class CustomerList{
    
    var theList = [Customer]()

    func add(c: Customer){
        theList.append(c)
    }
    
    func removeLast(){
        theList.removeLast()
    }
    
    func removeAll(){
        theList.removeAll()
    }
    
    func printList(){
        for i in theList{
            i.printCustomer()
        }
    }
    
    func count() -> Int{
        return theList.count
    }
    
}
