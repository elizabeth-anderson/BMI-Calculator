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
    @IBOutlet weak var inchesTextBox: UITextField! // connected text boxes
    @IBOutlet weak var feetTextBox: UITextField!
    @IBOutlet weak var weightTextBox: UITextField!
    var bmi = 0.0

    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "blueFade")!) //changes view controller background to an image
    }
    @IBAction func calculateButton(_ sender: Any) // calculates bmi
    {
        var weight = Double (weightTextBox.text!)

        var feet = Double(feetTextBox.text!)
        
        var inches = Double(inchesTextBox.text!)
        
        var kilograms = weight! * 0.45
        
        var feetToInches = feet! * 12
        
        var totalInches = feetToInches + inches!
        
        var finalHeight = totalInches * 0.025
        
         bmi = kilograms / (finalHeight * finalHeight)
        print(bmi)
        
       
       
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) // sends values to next VC
    {
        let nextVC = segue.destination as! ImageViewController
        nextVC.bmiTwo = bmi
        
    }


}
