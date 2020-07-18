//
//  ViewController.swift
//  final grade
//
//  Created by Student on 7/17/20.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
@IBOutlet weak var currentGradeTextFeild: UITextField!
    
@IBOutlet weak var desiredGradeTextFeild: UITextField!
    
@IBOutlet weak var finalWorthTextFeild: UITextField!
    
@IBAction func gradeNeededBtn(_ sender: Any) {
let currentGrade = Double(currentGradeTextFeild.text!)
let desiredGrade = Double(desiredGradeTextFeild.text!)
let finalWorthPercentage = Double(finalWorthTextFeild.text!)
    
let oneHundredPercent = 100.0
let percentageOfGrade = Double(oneHundredPercent - finalWorthPercentage!)/100.0
    
let gradeNeededOnFinal = (desiredGrade! - (percentageOfGrade * currentGrade!))/finalWorthPercentage!
    
gradeNeededLabel.text = "You Need \(gradeNeededOnFinal * 100)%"
    
}
    @IBOutlet weak var gradeNeededLabel: UILabel!
    
    
       
    
}

