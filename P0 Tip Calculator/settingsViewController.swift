//
//  settingsViewController.swift
//  P0 Tip Calculator
//
//  Created by manuel  castro  on 8/21/22.
//

import UIKit

class settingsViewController: UIViewController {
    
    @IBOutlet weak var minPercentTextfield: UITextField!
    @IBOutlet weak var startPercentTextfield: UITextField!
    @IBOutlet weak var maxPercentTextfield: UITextField!
    
    var minPerc = 0.0
    var startPerc = 0.0
    var maxPerc = 0.0
    
    @IBAction func setSettings(_ sender: Any) {
//        let defaults = UserDefaults.standard
//        defaults.set(minPercentTextfield.text,forKey:"minTipP")
//        defaults.set(startPercentTextfield.text,forKey:"startTipP")
//        defaults.set(maxPercentTextfield.text,forKey:"maxTipP")
        
        self.minPerc = Double(minPercentTextfield.text!) ?? 15.0
        self.startPerc = Double(startPercentTextfield.text!) ?? 20.0
        self.maxPerc = Double(maxPercentTextfield.text!) ?? 25.0
        
        performSegue(withIdentifier: "changeSettings", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vControlMain = segue.destination as! ViewController
        vControlMain.minTipPerc = minPerc
        vControlMain.startTipPerc = startPerc
        vControlMain.maxtTipPerc = maxPerc
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
