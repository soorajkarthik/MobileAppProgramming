//
//  ViewController.swift
//  Calculator
//
//  Created by Karthik, Sooraj on 10/23/18.
//  Copyright © 2018 Karthik, Sooraj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen: Double = 0;
    var previousNumber: Double = 0;
    var performingMath = false;
    var operation = 0;
    
    @IBOutlet weak var label: UILabel!
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBAction func numbers(_ sender: UIButton) {
        
        if performingMath == true {
            
            label.text = String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
            performingMath = false
            
        }
            
        else {
            
            label.text = label.text! + String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
        }
    }
    
    
    
    @IBAction func buttons(_ sender: UIButton) {
        
        switch sender.tag {
            
            case 11:
                label.text = ""
                previousNumber = 0;
                numberOnScreen = 0;
                operation = 0;
            
            case 12...15:
                previousNumber = Double(label.text!)!
                label.text = sender.currentTitle
                operation = sender.tag
                performingMath = true
            
            case 16:
                switch operation {
                    case 12:
                        label.text = String(previousNumber / numberOnScreen)
                    case 13:
                        label.text = String(previousNumber * numberOnScreen)
                    case 14:
                        label.text = String(previousNumber - numberOnScreen)
                    case 15:
                        label.text = String(previousNumber + numberOnScreen)
                    default:
                        break
                }
                previousNumber = Double(label.text!)!
            
            
                case 17:
                    if !(label.text?.contains("."))! {
                        label.text?.append(".")
                    }
            
                default:
                    break
            }
        
        
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
        
    }
    
}





