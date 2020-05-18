//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Karthik, Sooraj K on 3/7/19.
//

import Foundation
import UIKit

class AthleteFormViewController: UIViewController {
    
    var athlete: Athlete?
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var leagueTextField: UITextField!
    @IBOutlet weak var teamTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    
    
    
    func updateView() {
        if let ath = athlete {
            nameTextField.text = ath.name
            ageTextField.text = ath.age
            leagueTextField.text = ath.league
            teamTextField.text = ath.team
        }
    }
    
    @IBAction func saveAthlete(_ sender: UIButton) {
        
        guard let name = nameTextField.text, let age = ageTextField.text,
                        let league = leagueTextField.text, let team = teamTextField.text
                        else {return}
        
        athlete = Athlete(name: name, age: age, league: league, team: team)
        performSegue(withIdentifier: "UnwindToTable", sender: self)
        
    }
    
}
