//
//  ImageViewController.swift
//  bmiCalculatorFinal
//
//  Created by Elizabeth on 12/6/16.
//  Copyright © 2016 Elizabeth. All rights reserved.
//

import UIKit

class ImageViewController: ViewController

{
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var healthLabel: UILabel!
    
    var bmiTwo = Double()
    override func viewDidLoad()
    {
    let bmiString = String(format: "%.1f", bmiTwo) // rounds BMI value to tenths place

    bmiLabel.text = "Your BMI is \(bmiString)." // shows BMI value in the label
        
    if bmiTwo < 18.5 // changes background and text based on BMI value
    {
    healthLabel.text = "Yikes! You're underweight!😳 Eat a burger!!"
     view.backgroundColor = UIColor.red
    }
        
    else if bmiTwo >= 18.5 && bmiTwo <= 24.9
    {
    healthLabel.text = "You're healthy! Lucky you!"
    view.backgroundColor = UIColor.green
    }
        
    else if bmiTwo >= 25.0
    {
    healthLabel.text = "Uh-oh, you're overweight...hit the gym!"
    view.backgroundColor = UIColor.red
    }
}
}
