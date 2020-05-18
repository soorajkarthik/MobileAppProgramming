//
//  myButton.swift
//  Calculator
//
//  Created by Karthik, Sooraj K on 10/31/18.
//  Copyright © 2018 Karthik, Sooraj. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class MyButton: UIButton
{
    override func layoutSubviews() {
        super.layoutSubviews()
        
        updateCornerRadius()
    }
    
    @IBInspectable var rounded: Bool = false {
        didSet {
            updateCornerRadius()
        }
    }
    
    func updateCornerRadius() {
        layer.cornerRadius = rounded ? frame.size.height / 2 : 0
    }
}
