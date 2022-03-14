//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by user202406 on 3/12/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var settingsLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    var totalValue = "0.0";
    var tipValue = 10;
    var splitValue = 2;
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        totalLabel.text = totalValue;
        settingsLabel.text = "Split between \(splitValue)people with \(tipValue) tip."
    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
   

}
