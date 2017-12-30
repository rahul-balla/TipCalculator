//
//  ViewController.swift
//  TipCalculatorV3
//
//  Created by Rahul Balla on 12/29/17.
//  Copyright © 2017 Rahul Balla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var billText: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let x = UserDefaults.standard.object(forKey: "mySelectedTip") as? Int{
            tipControl.selectedSegmentIndex = x
            print("the changed index is ")
            print(tipControl.selectedSegmentIndex)
            
            let bill = Double(billText.text!) ?? 0
            let tipArray = [0.18, 0.2, 0.25]
            
            let tip = bill * tipArray[tipControl.selectedSegmentIndex]
            let total = bill + tip
            
            print("the index is ")
            print(tipControl.selectedSegmentIndex)
            
            tipLabel.text = String(format: "%.2f", tip)
            totalLabel.text = String(format: "%.2f", total)
        }
    }
    
    @IBAction func calculateTip(_ sender: Any) {
    
        let bill = Double(billText.text!) ?? 0
        let tipArray = [0.18, 0.2, 0.25]
        
        let tip = bill * tipArray[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        print("the index is ")
        print(tipControl.selectedSegmentIndex)
        
        tipLabel.text = String(format: "%.2f", tip)
        totalLabel.text = String(format: "%.2f", total)
        
    }
}

