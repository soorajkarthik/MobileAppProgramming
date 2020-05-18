//
//  ViewController.swift
//  Login
//
//  Created by Karthik, Sooraj K on 1/28/19.
//  Copyright © 2019 Karthik, Sooraj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var forgotUsernameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUsernameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = username.text
        }
    }

    @IBAction func forgotUsernameAction(_ sender: Any) {
        performSegue(withIdentifier: "ForgotUsernameOrPassword", sender: forgotUsernameButton)
    }
    
    @IBAction func forgotPasswordAction(_ sender: Any) {
        performSegue(withIdentifier: "ForgotUsernameOrPassword", sender: forgotPasswordButton)
    }
    
}

