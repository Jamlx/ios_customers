//
//  ViewController.swift
//  MyCustomerData
//
//  Created by James Cavanaugh on 10/10/19.
//  Copyright © 2019 James Cavanaugh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("loaded")
        print()
    }
    
    @IBOutlet weak var firstNameBox: UITextField!
    @IBOutlet weak var lastNameBox: UITextField!
    @IBOutlet weak var addressBox: UITextField!
    @IBOutlet weak var address2Box: UITextField!
    @IBOutlet weak var cityBox: UITextField!
    @IBOutlet weak var stateBox: UITextField!
    @IBOutlet weak var zipBox: UITextField!
    
    var firstName: String = ""
    var lastName: String = ""
    var address: String = ""
    var address2: String = ""
    var city: String = ""
    var state: String = ""
    var zip: Int = 0
    
    var customerList: CustomerList = CustomerList()
    
    func clearVals(){
        firstName = ""
        firstNameBox.text = ""
        lastName = ""
        lastNameBox.text = ""
        address = ""
        addressBox.text = ""
        address2 = ""
        address2Box.text = ""
        city = ""
        cityBox.text = ""
        state = ""
        stateBox.text = ""
        zip = 0
        zipBox.text = ""
    }
    
    
    @IBAction func btnAddClick(_ sender: UIButton) {
        let textVals = [firstNameBox.text, lastNameBox.text, addressBox.text, address2Box.text, cityBox.text, stateBox.text]
        var checkedTextVals: [String] = []
        let zipVal = zipBox.text
        var checkedZipVal: Int = 0
        for i in textVals{
            if i == nil{
                checkedTextVals.append("")
            }else{
                checkedTextVals.append(i!)
            }
        }
        if(zipVal != nil && Int(zipVal!) != nil){
            checkedZipVal = Int(zipVal!)!
        }else{
            checkedZipVal = 0
        }
        let cust: Customer = Customer(fname: checkedTextVals[0], lname: checkedTextVals[1], addr: checkedTextVals[2], addr2: checkedTextVals[3], c: checkedTextVals[4], st: checkedTextVals[5], z: checkedZipVal)
        customerList.add(c: cust)
        clearVals()
    }
    
    @IBAction func btnRemoveAllClick(_ sender: UIButton) {
        customerList.removeAll()
    }
    
    @IBAction func btnRemoveLast(_ sender: UIButton) {
        customerList.removeLast()
    }
    
    
    @IBAction func btnPrintList(_ sender: UIButton) {
        customerList.printList()
    }
    
}

