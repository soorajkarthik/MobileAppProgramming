//
//  ViewController.swift
//  Light
//
//  Created by Karthik, Sooraj K on 9/11/18.
//  Copyright © 2018 Karthik, Sooraj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var lightOn = true
    @IBOutlet weak var lightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lightButton.setTitle("Touch screen to toggle light", for: .normal)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    @IBAction func respondToClick(_ sender: UIButton) {
        
        lightOn = !lightOn
        updateUI()
    }
    
    func updateUI(){
     
        view.backgroundColor = lightOn ? .white : .black
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

