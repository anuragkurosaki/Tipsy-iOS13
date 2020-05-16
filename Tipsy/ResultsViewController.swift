//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by SAI ANURAG DODDI on 21/04/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    var bill = "0.0"
    var tip = 0
    var split = 1
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    override func viewDidLoad() {
        totalLabel.text = bill
        settingsLabel.text = "Split between \(split) people, with \(tip)% interest."
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        
    }
    
    

}
