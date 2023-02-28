//
//  ViewController.swift
//  Nelavelli_Practice
//
//  Created by Nelavelli,Chandu on 1/31/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textOutlet: UITextField!
    
    
    @IBOutlet var vowelOutlet: UILabel!
    
    
    @IBAction func vowelCheck(_ sender: UIButton) {
        //Read input from text field and store it in variable
        var word = textOutlet.text!;
        
        //Declare vowels and constants
        let vowels = "aeiou"
        let constants = "bcdfghijklmnpqrtvwxyz"
        
        //check if the word contains vowel
        for i in word{
              if vowels.contains(i){
                  vowelOutlet.text = "The \(word) has Vowel 🙂"
              }
              else if constants.contains(i){
                  vowelOutlet.text = "The \(word) has no Vowel ☹️"
              }
           }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

