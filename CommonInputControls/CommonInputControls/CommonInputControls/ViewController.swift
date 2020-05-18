//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Karthik, Sooraj K on 10/17/18.
//  Copyright © 2018 Karthik, Sooraj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var toggle: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        
        
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        
        print("Button was tapped!")
        
        if toggle.isOn {
            print("The switch is on!")
        } else {
            print("The switch is off.")
        }
        
        print(slider.value)
    }

    @IBAction func textChanged(_ sender: UITextField) {
        
        if let text = sender.text {
            print(text)
        }
    }
    
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        
        let location = sender.location(in: view)
        print(location)
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

