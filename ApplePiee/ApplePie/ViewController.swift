//
//  ViewController.swift
//  ApplePie
//
//  Created by Yatish Bansal on 22/07/25.
//

import UIKit

class ViewController: UIViewController {
    
    var listOfWords = ["abcds" , "swift" , "apple" , "banana" , "pineapple"]
    let incorrectMovesAllowed = 7
    
    var totalWins = 0{
        didSet{
            newRound()
        }
    }
    var totalLoses = 0{
        didSet {
            newRound()
        }
    }
    
    
    
    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet var letterButtons: [UIButton]!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var ScoreLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }
    var currentGame: Game!
    func newRound(){
        if !listOfWords.isEmpty{
            let newWord = listOfWords.removeFirst()
            currentGame = Game(word: newWord, incorrectMovesRemaining:incorrectMovesAllowed, guessedLetters: [])
            enableLetterButtons(true)
            updateUI()
        }
        else{
            enableLetterButtons(false)
        }
    }
    func enableLetterButtons(_ enable: Bool){
        for button in letterButtons{
            button.isEnabled = enable
        }
    }
    
    func updateUI(){
        var letters = [String]()
        for letter in currentGame.formattedWord{
            letters.append(String(letter))
        }
        let wordWithSpacing = letters.joined(separator: " ")
        correctWordLabel.text = currentGame.formattedWord
        ScoreLabel.text = "Wins: \(totalWins) Losses: \(totalLoses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
        
        
    }
    @IBAction func letteButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString = sender.titleLabel?.text ?? "No title"
        let letter = Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
        updateGameState()
    }
    func updateGameState(){
        if currentGame.incorrectMovesRemaining == 0{
            totalLoses += 1
        }
        else if currentGame.formattedWord == currentGame.word{
            totalWins += 1
        }
        else{
            updateUI()
        }
    }
 
    

}

