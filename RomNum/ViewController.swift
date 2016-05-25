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
    @IBOutlet weak var oneToNine: UIStackView!
    @IBOutlet weak var zeroClear: UIStackView!
    @IBOutlet weak var cToV: UIStackView!
    @IBOutlet weak var xClear: UIStackView!
    var state: Bool = false // Changes to true when we switch
    var labelVal: Int! = 0
    
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
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        topLabel.text = ""
        botLabel.text = ""
        cToV.hidden = true
        xClear.hidden = true
    }
    
    override func viewDidAppear(animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var infoButton: UIButton!
    @IBOutlet weak var equalButton: UIButton!
    @IBOutlet weak var changeStateButton: UIButton!
    @IBOutlet weak var upperBackground: UIImageView!
    @IBOutlet weak var lowerBackground: UIImageView!
    
    
    @IBAction func equalsButtonPressed(sender: AnyObject) { // Add code to tell which state we're in
        if state == false {
            toRN(labelVal)
        } else if state == true {
            toDecimal(topLabel.text!)
        }
    }
    
    @IBAction func clearButtonPressed(sender: AnyObject) {
        topLabel.text = ""
        botLabel.text = ""
        labelVal = 0
    }

    
    @IBAction func switchButtonPressed(sender: AnyObject) { // Apologies for how messy this is. I'm going to refine it.
        labelVal = 0
        if state == false {
            state = !false
            self.topLabel.fadeOut()
            self.botLabel.fadeOut()
            self.oneToNine.fadeOut()
            self.zeroClear.fadeOut()
            self.cToV.fadeOut()
            self.xClear.fadeOut()

            let buttonImages = [("EqualsButtonRed.PDF", equalButton),
                                ("LeftButtonRed.PDF", infoButton),
                                ("RightButtonRed.PDF", changeStateButton)]
            
            for (names, components) in buttonImages {
                if let image = UIImage(named: names) {
                    UIView.transitionWithView(components,
                                              duration:1.5,
                                              options: .TransitionCrossDissolve,
                                              animations: { components.setImage(image, forState: .Normal) },
                                              completion: nil)
                }
            }
            
            let backgroundImages = [("UpperBackgroundRed.PDF", upperBackground),
                                    ("LowerBackgroundRed", lowerBackground)]
            
            for (names, components) in backgroundImages {
                if let image = UIImage(named: names) {
                    UIView.transitionWithView(components,
                                              duration:1.5,
                                              options: .TransitionCrossDissolve,
                                              animations: { components.image = image },
                                              completion: nil)
                }
            }

            cToV.hidden = false
            xClear.hidden = false
            topLabel.text = ""
            botLabel.text = ""

            self.topLabel.fadeIn()
            self.botLabel.fadeIn()
            self.cToV.fadeIn()
            self.xClear.fadeIn()
        } else if state == true {
            state = !true
            self.topLabel.fadeOut()
            self.botLabel.fadeOut()
            self.cToV.fadeOut()
            self.xClear.fadeOut()
            
            let buttonImages = [("EqualsButtonPurple.PDF", equalButton),
                                ("LeftButtonPurple.PDF", infoButton),
                                ("RightButtonPurple.PDF", changeStateButton)]
            
            for (names, components) in buttonImages {
                if let image = UIImage(named: names) {
                    UIView.transitionWithView(components,
                                              duration:3,
                                              options: .TransitionCrossDissolve,
                                              animations: { components.setImage(image, forState: .Normal) },
                                              completion: nil)
                }
            }
            
            let backgroundImages = [("UpperBackgroundPurple.PDF", upperBackground),
                                    ("LowerBackgroundPurple", lowerBackground)]
            
            for (names, components) in backgroundImages {
                if let image = UIImage(named: names) {
                    UIView.transitionWithView(components,
                                              duration:3,
                                              options: .TransitionCrossDissolve,
                                              animations: { components.image = image },
                                              completion: nil)
                }
            }
            
            topLabel.text = ""
            botLabel.text = ""
            self.topLabel.fadeIn()
            self.botLabel.fadeIn()
            self.oneToNine.fadeIn()
            self.zeroClear.fadeIn()
        }
    }
    
    
    // MARK: - Naviation Method(s)
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let backItem = UIBarButtonItem()
        backItem.title = ""
        navigationItem.backBarButtonItem = backItem
    }
    
}


//MARK: 0-9 buttons
extension ViewController {
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

//MARK: Roman Numeral Buttons
extension ViewController {
    @IBAction func cButtonPressed(sender: AnyObject) {
        if let txt = topLabel?.text {
            topLabel?.text = txt + "C"
        }
    }
    
    @IBAction func dButtonPressed(sender: AnyObject) {
        if let txt = topLabel?.text {
            topLabel?.text = txt + "D"
        }
    }
    
    @IBAction func iButtonPressed(sender: AnyObject) {
        if let txt = topLabel?.text {
            topLabel?.text = txt + "I"
        }
    }
    
    @IBAction func lButtonPressed(sender: AnyObject) {
        if let txt = topLabel?.text {
            topLabel?.text = txt + "L"
        }
    }
    
    @IBAction func mButtonPressed(sender: AnyObject) {
        if let txt = topLabel?.text {
            topLabel?.text = txt + "M"
        }
    }
    
    @IBAction func vButtonPressed(sender: AnyObject) {
        if let txt = topLabel?.text {
            topLabel?.text = txt + "V"
        }
    }
    
    @IBAction func xButtonPressed(sender: AnyObject) {
        if let txt = topLabel?.text {
            topLabel?.text = txt + "X"
        }
    }
}

//MARK: Conversion Methods
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

