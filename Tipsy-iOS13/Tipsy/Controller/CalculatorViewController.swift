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
    var tip:Double = 0.10;
    var calculateBill : Double = 0.0;
    var numberOfpeople:Int =  2;
    var resultValue = "0.0"
   
    @IBAction func tipChanged(_ sender: UIButton) {
        //dismiss keyboard when user clicks one of tips
        billTextField.endEditing(true);
            
        //deselect all button
       clearAllSelectedState();
        //***Select one of each tip button***
        sender.isSelected = true
        
        //get current title
        let buttonTitle = sender.currentTitle!;
        //remove the last character of the button that pressed
        let buttonTitleAfterDrop = buttonTitle.dropLast();
        print(buttonTitleAfterDrop)
        //convert it into string
        let buttonTitlePercent = String(buttonTitleAfterDrop);
        print(buttonTitlePercent)
        //convert String to double
        let buttonPressed = Double(buttonTitlePercent)!;
        //divide percent expressed out of 100
        let tip = (buttonPressed/100);
        
        
    }
    func  clearAllSelectedState() {
        tenPctButton.isSelected = false
        zeroPctButton.isSelected = false;
        twentyPctButton.isSelected = false
        }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format:"%.0f",sender.value);
        numberOfpeople = Int(sender.value)
       
        
    }
    
    @IBAction func calculatePressed(_ sender: Any) {
        let bill = billTextField.text!;
        if bill != ""{
           let billTotal = Double(bill)!;
            let calculateBill =  billTotal * (1+tip)/Double(numberOfpeople);
             resultValue = String(format: "%.2f",calculateBill);
            
        }
        
        performSegue(withIdentifier: "goToResult", sender: self)
       
    
}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        if segue.identifier == "goToResult"{
        let destinationVC = segue.destination as! ResultsViewController;
            
        // Pass the selected object to the new view controller.
             destinationVC.totalValue = resultValue;
           destinationVC.tipValue = Int(tip * 100);
           destinationVC.splitValue = numberOfpeople;
            
        }
    }

}
