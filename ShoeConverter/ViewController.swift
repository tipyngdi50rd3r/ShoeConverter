//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Rehan Mahmood on 5/28/15.
//  Copyright (c) 2015 Sysnet Managed Services, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        
//        let sizeFromTextField = mensShoeSizeTextField.text
//        let numberFromTextField = sizeFromTextField.toInt() //optional
//        var integerFromTextField = numberFromTextField! //unwrap the optional
        
        let sizeFromTextField =
            mensShoeSizeTextField.text.toInt()! //condense the code above to one line
        
        let conversionConstant = 30  //international conversion constant can be anything you research on google
            mensConvertedShoeSizeLabel.hidden = false
            mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
            //string interpolation to convert it to a string
        
        
//        mensConvertedShoeSizeLabel.text = stringWithUpdatedShoeSize
            mensShoeSizeTextField.resignFirstResponder() // this is a function within UITextField variables that allow the keyboard to be released after the encompassing code has run
        
    }

    @IBAction func convertWomensButtonPressed(sender: UIButton) {
        
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue) //convert NS String to Swift String
        let conversionConstant = 30.5 //women's conversion constant
        
        womensConvertedShoeSizeLabel.hidden = false
        womensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
        womensShoeSizeTextField.resignFirstResponder()
        
        
    }
}

