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
    var advice: String?
    var color: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculateClicked(_ sender: Any) {
        dismiss(animated: true)
    }
    
   

}
