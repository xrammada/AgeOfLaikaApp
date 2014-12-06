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

    @IBAction func convertButtonReal(sender: UIButton) {

        let humanYear = Double(humanYearsTextField.text.toInt()!)
        var dogYears:Double
        
        if (humanYear <= 2) {
            dogYears = humanYear * 10.5
        }
        else {
            dogYears = 21 + (humanYear - 2) * 4
        }
        
        dogYearsLabel.text = "\(humanYear) Human years is\n\(dogYears) Dog years"
        dogYearsLabel.hidden = false
        
        humanYearsTextField.text = ""
        humanYearsTextField.placeholder = "Insert Human Years"
        
        // close keypad
        humanYearsTextField.resignFirstResponder()
    }
}

