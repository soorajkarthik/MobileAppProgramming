//
//  Athelete.swift
//  FavoriteAthlete
//
//  Created by Karthik, Sooraj K on 3/7/19.
//

import Foundation

struct Athlete {
    
    var name: String
    var age: String
    var league: String
    var team: String
    
    var description: String {
        return "\(name) is \(age) years old and plays for the \(team) in the \(league)"
    }
    
    init(name: String, age: String, league: String, team: String) {
        self.name = name
        self.age = age
        self.league = league
        self.team = team
    }
}
