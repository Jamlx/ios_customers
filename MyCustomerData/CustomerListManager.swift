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
        if(theList.count<1){
            print("List is empty.")
        }else{
            var counter = 1;
            for i in theList{
                print("===============")
                print("Customer #" + String(counter))
                i.printCustomer()
                counter = counter + 1
                print("===============")
            }
        }
    }
    
    func count() -> Int{
        return theList.count
    }
    
}
