//
//  resultViewController.swift
//  BMI CALCULATOR
//
//  Created by iOS Developer on 08/12/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var colourText: UIColor?
    var adviceText: String?
    
    
    @IBOutlet weak var resultLable : UILabel!
    @IBOutlet weak var adviceLable : UILabel!
    @IBOutlet weak var Image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLable.text = bmiValue
        adviceLable.text = adviceText
        resultLable.textColor = colourText
        
    }
    
    @IBAction func recalculateActionbutton(_ sender: UIButton) {
        self.dismiss(animated: true,completion: nil)
    }
    
}
