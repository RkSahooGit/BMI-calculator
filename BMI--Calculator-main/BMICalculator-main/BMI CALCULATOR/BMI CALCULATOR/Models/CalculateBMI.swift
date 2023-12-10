//
//  CalculateBMI.swift
//  BMI CALCULATOR
//
//  Created by iOS Developer on 08/12/23.
//

import UIKit

struct CalculateBMI {
    
    var bmi : BMI?
    
    mutating func calculateBMI(weight: Float, height: Float){
        
        let bmiValue = weight / pow(height , 2)
        
        if bmiValue<18.4 {
            
            bmi = BMI(value: bmiValue, 
                      adviceText: "Under Weight,Take some extra good calories ",
                      colour: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }
        else if bmiValue<24.9 {
            
            bmi = BMI(value: bmiValue, 
                      adviceText: "you are healthy and fit",
                      colour: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        }
        else if bmiValue<29.9 {
            
            bmi = BMI(value: bmiValue, 
                      adviceText: "Decrease some calories intake ",
                      colour: #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1))
        }
        else {
            
            bmi = BMI(value: bmiValue, 
                      adviceText: "Over weight,Do exercise and take less calories",
                      colour: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
    }
        func getBMIValue() -> String {
            let bmiString = String(format: "%.1f" , bmi?.value ?? 0.0)
            return bmiString
        }
        
        func getColour() -> UIColor {
            return bmi?.colour ?? .black
        }
        
        func getAdvice() -> String {
            return bmi?.adviceText ?? "No advice"
        }
    
}
