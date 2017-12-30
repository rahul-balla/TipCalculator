//
//  SettingsViewController.swift
//  TipCalculatorV3
//
//  Created by Rahul Balla on 12/30/17.
//  Copyright © 2017 Rahul Balla. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    
    @IBOutlet weak var Btn18: UIButton!
    @IBOutlet weak var Btn20: UIButton!
    @IBOutlet weak var Btn25: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func setDefaultTip(_ sender: Any) {
        let defaultTip = defaultTipControl.selectedSegmentIndex
        UserDefaults.standard.set(defaultTip, forKey: "mySelectedTip")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let x = UserDefaults.standard.object(forKey: "mySelectedTip") as? Int{
            defaultTipControl.selectedSegmentIndex = x
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
