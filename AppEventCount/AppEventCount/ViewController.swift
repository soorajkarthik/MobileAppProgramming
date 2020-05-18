//
//  ViewController.swift
//  AppEventCount
//
//  Created by Karthik, Sooraj K on 3/1/19.
//  Copyright © 2019 Karthik, Sooraj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var didFinishLaunchingLabel: UILabel!
    @IBOutlet weak var willResignActiveLabel: UILabel!
    @IBOutlet weak var didEnterBackgroundLabel: UILabel!
    @IBOutlet weak var willEnterForegroundLabel: UILabel!
    @IBOutlet weak var didBecomeActiveLabel: UILabel!
    @IBOutlet weak var willTerminateLabel: UILabel!
    
    var launchCount = 0
    var resignActiveCount = 0
    var enterBackgroundCount = 0
    var enterForegroundCount = 0
    var becomeActiveCount = 0
    var terminateCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func updateView() {
        
        didFinishLaunchingLabel.text = "The app has launched \(launchCount) times"
        willResignActiveLabel.text = "The app has become inactive \(resignActiveCount) times"
        didEnterBackgroundLabel.text = "The app has become a background process \(enterBackgroundCount) times"
        willEnterForegroundLabel.text = "The app has been moved to the foreground \(enterForegroundCount) times"
        didBecomeActiveLabel.text = "The app has become active again \(becomeActiveCount) times"
        willTerminateLabel.text = "The app has been terminated \(terminateCount) times"
    }
    
}

