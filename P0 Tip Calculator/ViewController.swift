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
    @IBOutlet weak var segmentedElement: UISegmentedControl!
    
    //let defaults = UserDefaults.standard
    //NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    //var minTipPerc =  defaults.string(forKey: "minTipP")
    var minTipPerc = 15.0
    //NSString *minTipPerc = [defaults stringForKey:@"minTipP"];
    var startTipPerc = 20.0
    var maxtTipPerc = 25.0
    
    
    @IBAction func calcTipSlider(_ sender:UISlider) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let percent = (floor(Double(tipSlider.value)))/100.0
        let tip = bill * percent
        let total = tip + bill
        
        percentageLabel.text = String( format: "%.0F",(percent*100))+" %"
        tipAmountLabel.text = String(format: "$%.2F" ,tip)
        totalLabel.text = String(format: "$%.2F" ,total)
    }
    

    
    @IBAction func calcTipSegmented(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentage  = [minTipPerc, startTipPerc, maxtTipPerc]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]/100
        let total = tip + bill
        
        tipAmountLabel.text = String(format: "$%.2F" ,tip)
        totalLabel.text = String(format: "$%.2F" ,total)
    }
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        print("sssss")
//    }
    
    override func viewWillAppear(_ animated: Bool) {
    
        tipSlider.minimumValue = Float(minTipPerc)
        tipSlider.maximumValue = Float(maxtTipPerc)
        tipSlider.value = Float(startTipPerc)
        
        segmentedElement.setTitle(String(minTipPerc) +
                                  " %", forSegmentAt: 0)
        segmentedElement.setTitle(String(startTipPerc) +
                                  " %", forSegmentAt: 1)
        segmentedElement.setTitle(String(maxtTipPerc) +
                                  " %", forSegmentAt: 2)
        percentageLabel.text = String(tipSlider.value) + " %"
        print("aaaaaa")

    }


}

