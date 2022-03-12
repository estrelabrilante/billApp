//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak var zeroPctButton: UIButton!
    
    @IBOutlet weak var splitNumberLabel: UILabel!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var billTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tipChanged(_ sender: UIButton) {
        
        //deselect all button
       clearAllSelectedState();
        //***Select one of each tip button***
        sender.isSelected = true
        //get current title
        let buttonTitle = sender.currentTitle!;
        //remove the last character of the button that pressed
        let buttonTitleAfterDrop = buttonTitle.dropLast();
        //convert it into string
        let buttonTitlePercent = String(buttonTitleAfterDrop);
        //convert String to double
        let buttonPressed = Double(buttonTitlePercent)!;
        //divide percent expressed out of 100
        let tip = (buttonPressed/100);
        print(tip)
    }
    func  clearAllSelectedState() {
        tenPctButton.isSelected = false
        zeroPctButton.isSelected = false;
        twentyPctButton.isSelected = false
        }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
    }
    
    @IBAction func calculatePressed(_ sender: Any) {
        
    }
}


