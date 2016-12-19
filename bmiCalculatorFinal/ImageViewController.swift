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


    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var healthLabel: UILabel!
    
    var bmiTwo = Double()
    
    override func viewDidLoad()
    {
        myImage.image = UIImage(named: "gym") // sets initial UIImage value
        let bmiString = String(format: "%.1f", bmiTwo) // rounds BMI value to tenths place

        bmiLabel.text = "Your BMI is \(bmiString)." // shows BMI value in the label
        
        
    if bmiTwo < 18.5 // changes background, image, and text based on BMI value
        {
            healthLabel.text = "Yikes, you're underweight! 😳 Eat a burger!!"
            
            view.backgroundColor = UIColor.red
            
            myImage.image = UIImage(named:"cheeseburger")
        }
        
        
    else if bmiTwo >= 18.5 && bmiTwo <= 24.9
        {
            healthLabel.text = "Nice, you have a healthy weight!"
            
            view.backgroundColor = UIColor.green
            
            myImage.image = UIImage (named:"yess")
        }
        
        
    else if bmiTwo >= 25.0
        {
            healthLabel.text = "Uh-oh, you're overweight...hit the gym!"
            
            view.backgroundColor = UIColor.red
        }
}
}
