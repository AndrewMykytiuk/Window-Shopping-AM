//
//  ViewController.swift
//  window-shopper-AM
//
//  Created by User on 11.04.2018.
//  Copyright © 2018 MPTechnologies. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var WageTxt: CurrentTextField!
    @IBOutlet weak var ItemTxt: CurrentTextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
       let calculateButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calculateButton.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        calculateButton.setTitle("Calculate", for: .normal)
        calculateButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calculateButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        WageTxt.inputAccessoryView = calculateButton
        ItemTxt.inputAccessoryView = calculateButton
        
        
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        
    }

    @objc func calculate() {
        if let WageTxt = WageTxt.text, let ItemTxt = ItemTxt.text{
            if let wage = Double(WageTxt), let item = Double(ItemTxt){
                view.endEditing(true)
                resultLabel.isHidden = false
                hoursLabel.isHidden = false
                resultLabel.text =  "\(Wage.getHours(forWage: wage, andPrice: item))"
            }
        }
        
    }
   
    @IBAction func clearCalculatorButton(_ sender: Any) {
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        WageTxt.text = ""
        ItemTxt.text = ""
    }
    
}

