//
//  ViewController.swift
//  BMI CALCULATOR
//
//  Created by iOS Developer on 07/12/23.
//

import UIKit

class ViewController: UIViewController {
    
    var calculateBMI = CalculateBMI()
    

    @IBOutlet weak var WeightLable: UILabel!
    @IBOutlet weak var heightLable: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func weightSliderAction(_ sender: UISlider) {
        let value = Int(sender.value)
        WeightLable.text = "\(String(value))kg"
    }
    
    @IBAction func heightsliderAction(_ sender: UISlider) {
        let value = round(sender.value * 100 ) / 100.0
        heightLable.text = "\(String(value))m"
    }
    
    @IBAction func calculateActionbutton(_ sender: UIButton) {
        let weight = weightSlider.value
        let height = heightSlider.value
        
        calculateBMI.calculateBMI(weight: weight, height: height)
       
        self.performSegue(withIdentifier: "showDetails", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetails" {
            let resultVC = segue.destination as! ResultViewController
            resultVC.bmiValue = calculateBMI.getBMIValue()
            resultVC.adviceText = calculateBMI.getAdvice()
            resultVC.colourText = calculateBMI.getColour()
        }
    }
    
}
