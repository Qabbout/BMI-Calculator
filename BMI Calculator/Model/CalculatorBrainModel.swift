//
//  CalculatorBrainModel.swift
//  BMI Calculator
//
//  Created by Abdulrahman on 1/10/22.
//

import UIKit

struct CalculatorBrainModel {
    
    var bmi: BMIModel?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMIModel(value: bmiValue, advice: "Eat more pies", color: .systemYellow)
        }
        else if bmiValue < 24.9 {
            bmi = BMIModel(value: bmiValue, advice: "Fit as a fiddle!", color: .systemGreen)
        }
        else {
            bmi = BMIModel(value: bmiValue, advice: "Eat less pies!", color: .systemRed)
        }
        
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
}
