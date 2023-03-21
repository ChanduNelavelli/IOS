//
//  ViewController.swift
//  WordGuess App
//
//  Created by Nelavelli,Chandu on 3/21/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var DisplayLabel: UILabel!
    
    @IBOutlet weak var HintLabel: UILabel!
    
    @IBOutlet weak var letterEntered: UITextField!
    
    @IBOutlet weak var checkButton: UIButton!
    
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    var words = [["SWIFT","Programming Language"],["Dog","Animal"],["CYCLE","Two Wheeler"],["MACBOOK","Apple Device"]]
    
    var count = 0;
        var word = ""
        var lettersGuessed = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //check button should be disabled
        checkButton.isEnabled = false
        
        //get the first word from the array
        word = words[count][0]
        DisplayLabel.text = ""
        
        //populate the display label with underscores. The underscores should be equal to the characters in th word
        updateUnderscores();
        
        //get the first hint from the array
        HintLabel.text = "Hint:"+words[count][1]
        
        //clear the status intially
        statusLabel.text = ""
    }
    
    @IBAction func checkButton(_ sender: UIButton) {
        //Get the text from the text field.
                var letter = letterEntered.text!
                
                //Replace the guessed letter if the letter is part of the word.
                lettersGuessed = lettersGuessed + letter
                 var revealedWord = ""
                for l in word{
                    if lettersGuessed.contains(l){
                        revealedWord += "\(l)"
                    }
                    else{
                        revealedWord += "_ "
                    }
                }
                //Assigning the word to displaylabel after a guess
                DisplayLabel.text = revealedWord
                letterEntered.text = ""
                
                //If the word is guessed correctly, we are enabling play again button and disabling the check button.
                if DisplayLabel.text!.contains("_") == false{
                    playAgainButton.isHidden = false;
                    checkButton.isEnabled = false;
                }
                checkButton.isEnabled = false
    }
    
    @IBAction func playAgainButton(_ sender: UIButton) {
        //Reset the button to disable initially.
                playAgainButton.isHidden = true
                //clear the label
                lettersGuessed = ""
                count += 1
                //if count reaches the end of the array (all the words are guessed sucessfully), then print Congratualtions in the status label.
                if count == words.count{
                    
                    statusLabel.text = "Congruations! You are done with the game!"
                    //clearing the labels.
                    DisplayLabel.text = ""
                    HintLabel.text = ""
                }
                else{
                    //fetch the next word from the array
                    word = words[count][0]
                    //fetch the hint related to the word
                    HintLabel.text = "Hint: "
                    HintLabel.text! += words[count][1]
                    //Enabling the check button.
                    checkButton.isEnabled = true
                    
                    DisplayLabel.text = ""
                    updateUnderscores()
                }
    }
    
    @IBAction func enterLabeledChanged(_ sender: UITextField) {
        //Read the data from the text field
                var textEnterd = letterEntered.text!;
                //Consider only the last character by calling textEntered.last and trimming the white spaces.
                textEnterd = String(textEnterd.last ?? " ").trimmingCharacters(in: .whitespaces)
                letterEntered.text = textEnterd
                
                //Check whether the entered text is empty or not to enable check button.
                if textEnterd.isEmpty{
                    checkButton.isEnabled = false
                }
                else{
                    checkButton.isEnabled = true
                }
    }
    
    func updateUnderscores(){
        for letter in words{
            DisplayLabel.text! += "- "
        }
    }


}

