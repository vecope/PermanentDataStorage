//
//  ViewController.swift
//  PermanentDataStorage
//
//  Created by CAMILO ALEJANDRO ALFONSO SANCHEZ on 10/18/17.
//  Copyright © 2017 CAMILO ALEJANDRO ALFONSO SANCHEZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    
    @IBAction func Submit(_ sender: Any) {
        
        let input = textField.text
        
        UserDefaults.standard.set(input, forKey: "number")
        
        let numberObject = UserDefaults.standard.object(forKey: "number")
        
        if let number = numberObject as? String {
            print("Success")
            print(number)
        }
        
    }
    
    @IBAction func Retrieve(_ sender: Any) {
        
        let numberObject = UserDefaults.standard.object(forKey: "number")
        
        if let number = numberObject as? String {
            result.text = number
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

