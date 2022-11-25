//
//  SecondViewController.swift
//  protocol&dailigate
//
//  Created by Admin on 09/11/22.
//

import UIKit

protocol DataPass: AnyObject {
    func dataPassing(name:String, address:String, city:String)
}



class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBOutlet weak var textFieldName: UITextField!
    
    
    @IBOutlet weak var textFieldAddress: UITextField!
    
    @IBOutlet weak var textFieldCity: UITextField!
    
    weak var delegate:DataPass?
    
    @IBAction func saveButton(_ sender: UIButton) {
        delegate?.dataPassing(name: textFieldName.text!, address: textFieldAddress.text!, city: textFieldCity.text!)
    }
    
}
