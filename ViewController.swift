//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Martin Brunner on 01.11.14.
//  Copyright (c) 2014 Martin Brunner. All rights reserved.
//

import UIKit

var conversionConstant = 0

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var convertButton: UIButton!

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    @IBOutlet weak var menOrWomenButton: UISegmentedControl!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
               convertButton.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func convertedButtonPressed(sender: UIButton) {
       let sizeFromTextField = mensShoeSizeTextField.text
        if !sizeFromTextField.isEmpty {
            var intFromTextField = mensShoeSizeTextField.text.toInt()!
            mensConvertedShoeSizeLabel.hidden = false
            mensConvertedShoeSizeLabel.text =  "\(intFromTextField) US is \(intFromTextField + conversionConstant) in Europe"
            mensShoeSizeTextField.text = ""
            convertButton.hidden = true
        }
        
    }
    
    @IBAction func shoeSizeValueEnteredNew(sender: UITextField) {
        convertButton.hidden = false
                println("Changed-2")
    }
    

    @IBAction func menOrWomenSelected(sender: UISegmentedControl) {
        mensConvertedShoeSizeLabel.text = ""
        if sender.selectedSegmentIndex == 0 {
            titleLabel.text = "Men's Shoe Conversion"
            conversionConstant = 33
        }
        else {
            titleLabel.text = "Women's Shoe Conversion"
            conversionConstant = 30
        }

    }
    
    
}

