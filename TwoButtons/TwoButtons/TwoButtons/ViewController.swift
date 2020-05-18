//
//  ViewController.swift
//  TwoButtons
//
//  Created by Karthik, Sooraj K on 10/17/18.
//  Copyright © 2018 Karthik, Sooraj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var setButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var textLable: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonIsClicked(_ sender: UIButton) {
        
        if sender == setButton {
            textLable.text = textField.text
        }
        else {
            textLable.text = " "
        }
    }
    


}

