//
//  ViewController.swift
//  Nelavelli_Assignment01
//
//  Created by Nelavelli,Chandu on 1/26/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var firstNameOutlet: UITextField!
    
    @IBOutlet var lastNameOutlet: UITextField!
    
    @IBOutlet var detailsoutlet: UILabel!
    
    @IBOutlet var yearOutlet: UITextField!
    
    @IBOutlet var fullNameLabel: UILabel!
    
    @IBOutlet var initialsLabel: UILabel!
        
    @IBOutlet var ageLabel: UILabel!
    
    
    @IBAction func SubmitBTN(_ sender: UIButton) {
        //Read the first name and store it in a variable
        var firstName = firstNameOutlet.text!;
        
        //Read the last name and store it in a variable
        var lastName = lastNameOutlet.text!;
        
        //Read the year of birth and store it in a variable
        var yearOfBirth = Int(yearOutlet.text!)
        
        //declare current year and store it in a variable
        let currentYear = Calendar.current.component(.year, from: Date())

        
        //display the details in the labels
        detailsoutlet.text = "Details"
        fullNameLabel.text = "Full Name : \(lastName) \(firstName)"
        initialsLabel.text = "Initials : \(firstName.prefix(1)) \(lastName.prefix(1))"
        ageLabel.text = "Age : \(currentYear-yearOfBirth!)"
    }
    
    @IBAction func ResetBTN(_ sender: UIButton) {
        detailsoutlet.text?.removeAll()
        fullNameLabel.text?.removeAll()
        initialsLabel.text?.removeAll()
        ageLabel.text?.removeAll()
        firstNameOutlet.text?.removeAll()
        lastNameOutlet.text?.removeAll()
        yearOutlet.text?.removeAll()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

