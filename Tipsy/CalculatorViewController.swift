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
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    var tip = 0.10
    var nPersons = 1.0
    var res = 0.0
    var fRes = "0.0"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(false)
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        let title = sender.currentTitle!
        let buttonvalue = String(title.dropLast())
        let buttonTitleAsNumber = Double(buttonvalue)!
        
        tip = buttonTitleAsNumber/100
        
        
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        nPersons = sender.value
        splitNumberLabel.text = String(format: "%.f",sender.value)

        
        
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        
        let amount = billTextField.text!
        if amount != ""{
            let billTotal = Double(amount)!
            res = (billTotal+(billTotal * tip)) / nPersons
            fRes = String(format:"%.2f",res)
            
            print(fRes)
            
        }
    
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let resultViewController = segue.destination as! ResultsViewController
            resultViewController.bill = fRes
            resultViewController.split = Int(nPersons)
            resultViewController.tip = Int(tip*100)
            
            
        }
    }

}

