//
//  ViewController.swift
//  Apple Pie
//
//  Created by Karthik, Sooraj K on 9/27/18.
//  Copyright © 2018 Karthik, Sooraj. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    var listOfWords = ["buccaneer", "swift", "glorious","incandescent", "bug", "program"]
    let incorrectMovesAllowed = 7
    var totalWins = 0 {
        didSet {
            newRound()
        }
    }
    
    var totalLosses = 0 {
        didSet {
            newRound()
        }
    }
    
    var currentGame: Game!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString = sender.title(for: .normal)!
        let letter = Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
        updateGameState()
    }
    
    struct Game {
        var word: String
        var incorrectMovesRemaining: Int
        var guessedLetters: [Character]
        var formattedWord: String {
            
            var guessedWord = ""
            
            for letter in word.characters{
                if guessedLetters.contains(letter) {
                    guessedWord += "\(letter)"
                }
                
                else {
                    guessedWord += " _"
                }
            }
            
            return guessedWord
        }
        
        mutating func playerGuessed(letter: Character) {
            guessedLetters.append(letter)
            
            if !word.characters.contains(letter) {
                incorrectMovesRemaining -= 1
            }
        }
    }
    
    
    func newRound() {
        if !listOfWords.isEmpty {
            let newWord = listOfWords.removeFirst()
            currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetters: [])
            enableLetterButtons(true)
            updateUI()
        }
        else {
            enableLetterButtons(false)
        }
        
    }
    
    func enableLetterButtons(_ enable: Bool) {
        for button in letterButtons {
            button.isEnabled = enable
        }
    }
    
    
    func updateUI() {
        correctWordLabel.text = currentGame.formattedWord
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }
    
    func updateGameState() {
     
        if currentGame.incorrectMovesRemaining == 0 {
            
            
            correctWordLabel.textColor = .black
            totalLosses += 1
        }
        else if currentGame.word == currentGame.formattedWord {
            totalWins += 1
        }
        else {
            updateUI()
        }
    }

}
