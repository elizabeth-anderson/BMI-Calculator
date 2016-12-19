//
//  ViewController.swift
//  bmiCalculatorFinal
//
//  Created by Elizabeth on 12/5/16.
//  Copyright © 2016 Elizabeth. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
     // connected text boxes on UIView
    @IBOutlet weak var inchesTextBox: UITextField!
    @IBOutlet weak var feetTextBox: UITextField!
    @IBOutlet weak var weightTextBox: UITextField!
    var bmi = 0.0 // sets BMI initial value to zero

    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "blueFade")!) //changes view controller background to an image
    }
    
    
    @IBAction func calculateButton(_ sender: Any) // holds all BMI math/conversions
    {
        let weight = Double (weightTextBox.text!) //sets text boxes as doubles

        let feet = Double(feetTextBox.text!)
        
        let inches = Double(inchesTextBox.text!)
        
        let kilograms = weight! * 0.45 // converting lbs to kg
        
        let feetToInches = feet! * 12 // inches to feet
        
        let totalInches = feetToInches + inches! // adds up total inches
        
        let finalHeight = totalInches * 0.025 // inches to metres
        
         bmi = kilograms / (finalHeight * finalHeight) // calculates  BMI
        print(bmi)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) // sends values to next VC
    {
        let nextVC = segue.destination as! ImageViewController // sets destination
        
        nextVC.bmiTwo = bmi // carried values
        
    }


}
