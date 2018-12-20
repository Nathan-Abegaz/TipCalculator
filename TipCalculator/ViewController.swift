//
//  ViewController.swift
//  TipCalculator
//
//  Created by Nathan  Abegaz on 12/6/18.
//  Copyright © 2018 Nathan  Abegaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billValue: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPercent: UISegmentedControl!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func OnTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func billValueChanged(_ sender: Any) {
        let billAmount = Double(billValue.text!) ?? 0
        let tipP = [0.18,0.20,0.25]
        
        let tip = billAmount*tipP[tipPercent.selectedSegmentIndex]
        let total = billAmount + tip
        
        
        tipLabel.text = String(format: "S%0.2f",tip)
        totalLabel.text = String(format:"$%0.2f",total)
        
        
        
    }
    
    
}

