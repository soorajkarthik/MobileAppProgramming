//
//  FoodTableViewController.swift
//  MealTracker
//
//  Created by Karthik, Sooraj K on 3/28/19.
//  Copyright © 2019 Karthik, Sooraj. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {

    var meals: [Meal]  {
        
        var breakfast: Meal = Meal(name: "Breakfast")
        var lunch: Meal = Meal(name: "Lunch")
        var dinner: Meal = Meal(name: "Dinner")
        
        breakfast.food = [Food(name: "Toast", description: "Two slices of toasted bread"),
                          Food(name: "Orange Juice", description: "Freshly squeezed orange juice"),
                          Food(name: "Apple", description: "One granny smith apple")]
        
        lunch.food = [Food(name: "Rice", description: "One cup of cooked brown rice"),
                      Food(name: "Chicken", description: "7oz chicken breast"),
                      Food(name: "Brocoli", description: "One cup of brocoli")]
        
        dinner.food = [Food(name: "Pasta", description: "Big bowl of penne pasta with marinara sauce"),
                       Food(name: "Mashed Potatoes", description: "One whole potato mashed"),
                       Food(name: "Asparagus", description: "10 sticks of asparagus, baked, salted")]
        
        return [breakfast, lunch, dinner]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals[section].food.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        
        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = food.description

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return meals[section].name
    }



}
