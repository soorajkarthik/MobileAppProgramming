//
//  Meal.swift
//  MealTracker
//
//  Created by Karthik, Sooraj K on 3/28/19.
//  Copyright © 2019 Karthik, Sooraj. All rights reserved.
//

import Foundation

struct Meal {
    var name: String
    var food: [Food]
    
    init(name: String) {
        self.name = name
        food = []
    }
}
