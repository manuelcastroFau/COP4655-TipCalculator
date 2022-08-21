//
//  ViewController.swift
//  P0 Tip Calculator
//
//  Created by manuel  castro  on 8/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var percentageLabel: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    
    @IBAction func calcTipSlider(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let percent = (floor(Double(tipSlider.value)) + 15)/100.0
        let tip = bill * percent
        let total = tip + bill
        
        percentageLabel.text = String( format: "%.0F",(percent*100))+" %"
        tipAmountLabel.text = String(format: "$%.2F" ,tip)
        totalLabel.text = String(format: "$%.2F" ,total)
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentage  = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = tip + bill
        
        tipAmountLabel.text = String(format: "$%.2F" ,tip)
        totalLabel.text = String(format: "$%.2F" ,total)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

