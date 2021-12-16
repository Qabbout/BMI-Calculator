//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Abdulrahman on 12/16/21.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
    }
    
    @IBAction func recalculateClicked(_ sender: Any) {
        dismiss(animated: true)
    }
    
   

}
