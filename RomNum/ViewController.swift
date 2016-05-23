//
//  ViewController.swift
//  RomNum
//
//  Created by Nasser Eledroos on 5/18/16.
//  Copyright © 2016 Nasser Eledroos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var botLabel: UILabel!
    
    var labelVal: Int! = 0
    var convert: Convert?
    
    let romans = [("M",  1000),
                  ("CM", 900),
                  ("D",  500),
                  ("CD", 400),
                  ("C",  100),
                  ("XC", 90),
                  ("L",  50),
                  ("XL", 40),
                  ("X",  10),
                  ("IX", 9),
                  ("V",  5),
                  ("IV", 4),
                  ("I",  1)]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        topLabel.text = ""
        botLabel.text = ""
    }
    
    @IBAction func equalsButtonPressed(sender: AnyObject) {
        toRN(labelVal)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func oneButtonPressed(sender: AnyObject) {
        if let txt = topLabel?.text {
                topLabel?.text = txt + "1"
                labelVal = Int(topLabel.text!)
                print(labelVal)
        }
    }
    
    @IBAction func twoButtonPressed(sender: AnyObject) {
        if let txt = topLabel?.text {
            topLabel?.text = txt + "2"
            labelVal = Int(topLabel.text!)
            print(labelVal)
        }
    }
    
    @IBAction func threeButtonPressed(sender: AnyObject) {
        if let txt = topLabel?.text {
            topLabel?.text = txt + "3"
            labelVal = Int(topLabel.text!)
            print(labelVal)
        }
    }
    
    @IBAction func fourButtonPressed(sender: AnyObject) {
        if let txt = topLabel?.text {
            topLabel?.text = txt + "4"
            labelVal = Int(topLabel.text!)
            print(labelVal)
        }
    }
    
    @IBAction func fiveButtonPressed(sender: AnyObject) {
        if let txt = topLabel?.text {
            topLabel?.text = txt + "5"
            labelVal = Int(topLabel.text!)
            print(labelVal)
        }
    }

    @IBAction func sixButtonPressed(sender: AnyObject) {
        if let txt = topLabel?.text {
            topLabel?.text = txt + "6"
            labelVal = Int(topLabel.text!)
            print(labelVal)
        }
    }
    
    @IBAction func sevenButtonPressed(sender: AnyObject) {
        if let txt = topLabel?.text {
            topLabel?.text = txt + "7"
            labelVal = Int(topLabel.text!)
            print(labelVal)
        }
    }
    
    @IBAction func eightButtonPressed(sender: AnyObject) {
        if let txt = topLabel?.text {
            topLabel?.text = txt + "8"
            labelVal = Int(topLabel.text!)
            print(labelVal)
        }
    }
    
    @IBAction func nineButtonPressed(sender: AnyObject) {
        if let txt = topLabel?.text {
            topLabel?.text = txt + "9"
            labelVal = Int(topLabel.text!)
            print(labelVal)
        }
    }
    
    @IBAction func zeroButtonPressed(sender: AnyObject) {
        if let txt = topLabel?.text {
            topLabel?.text = txt + "0"
            labelVal = Int(topLabel.text!)
            print(labelVal)
        }
    }
    

    
    

    
}

extension ViewController {
    func toRN(num: Int) -> String {
        guard num > 0 else {
            return ""
        }
        var remainder = num
        var output = ""
        
        for (romanChar, numVal) in romans {
            let count = remainder / numVal
            
            if count == 0 { continue }
            
            for _ in 1...count {
                output += romanChar
                remainder -= numVal
            }
        }
        
        botLabel.text = output
        return output
        
    }
    
    func toDecimal(var roman: String) -> Int? { // using var in Swift 2.2, will have to be replaced for Swift 3
        guard roman != "" else {
            return nil
        }
        
        var num = 0
        
        for (letter, numVal) in romans {
            while roman.hasPrefix(letter) {
                let first = roman.startIndex
                let count = letter.characters.count
                roman.removeRange(first ..< first.advancedBy(count)) // open range operator
                
                num = num + numVal
            }
        }
        
        botLabel.text = String(num)
        return num
    }
    
}

