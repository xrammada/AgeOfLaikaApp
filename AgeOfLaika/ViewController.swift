//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Adam Marx on 12/5/14.
//  Copyright (c) 2014 Adam Marx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogYearsLabel: UILabel!
    @IBOutlet weak var humanYearsTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButton(sender: UIButton) {
    
        let humanYear = humanYearsTextField.text.toInt()!
        dogYearsLabel.text =  "\(humanYear) Human years is\n\(humanYear * 7) Dog years"
        dogYearsLabel.hidden = false
        
        humanYearsTextField.text = ""
        humanYearsTextField.placeholder = "Insert Human Years"
        
        // close keypad
        humanYearsTextField.resignFirstResponder()
        
    }

}

