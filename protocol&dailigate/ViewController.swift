//
//  ViewController.swift
//  protocol&dailigate
//
//  Created by Admin on 09/11/22.
//

import UIKit

class ViewController: UIViewController, DataPass {
    
    @IBOutlet weak var lableName: UILabel!
    
    @IBOutlet weak var lableAddrress: UILabel!
    
    @IBOutlet weak var lableCity: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func buttonGoTo2VC(_ sender: Any) {
        
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "Second") as! SecondViewController
        
        secondVC.delegate = self
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    func dataPassing(name: String, address: String, city: String) {
        
        lableName.text = name
        lableAddrress.text = address
        lableCity.text = city
    }
    
    
}

