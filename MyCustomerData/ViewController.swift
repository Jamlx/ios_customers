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
    
    var firstName: String = ""
    var lastName: String = ""
    var address: String = ""
    var address2: String = ""
    var city: String = ""
    var zip: Int = 0
    
    func clearValues(){
        firstName = ""
        lastName = ""
        address = ""
        address2 = ""
        city = ""
        zip = 0
    }
    
    @IBAction func firstNameUpdate(_ sender: UITextField) {
    }
    
    @IBAction func lastNameUpdate(_ sender: UITextField) {
    }
    
    @IBAction func addressUpdate(_ sender: UITextField) {
    }
    
    @IBAction func address2Update(_ sender: UITextField) {
    }
    
    @IBAction func cityUpdate(_ sender: UITextField) {
    }
    
    @IBAction func stateUpdate(_ sender: UITextField) {
    }
    
    @IBAction func zipUpdate(_ sender: UITextField) {
    }
    

    
    @IBAction func btnAddClick(_ sender: UIButton) {
        
    }
    

    @IBAction func btnRemoveAllClick(_ sender: UIButton) {
    }
    
    @IBAction func btnRemoveLastClick(_ sender: UIButton) {
    }
    
    
    @IBAction func btnPrintListClick(_ sender: UIButton) {
    }
    

}

