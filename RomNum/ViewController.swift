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
    var labelVal: Int! = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        topLabel.text = ""
        
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

