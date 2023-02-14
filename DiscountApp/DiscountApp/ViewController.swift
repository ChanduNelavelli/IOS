//
//  ViewController.swift
//  DiscountApp
//
//  Created by Nelavelli,Chandu on 2/14/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountOutlet: UITextField!
    
    
    @IBOutlet weak var discountOutlet: UITextField!
    
    
    @IBAction func calculateDiscount(_ sender: Any) {
        //read the entered amount 100
        var enteredAmount = Double(amountOutlet.text!)
        
        //Read the entered discount rate 25
        var enteredDiscRate = Double(discountOutlet.text!)
        
        //Calculate the price after discount and assign it to the display label.
        var priceAfterDiscount = enteredAmount! - (enteredAmount!*enteredDiscRate!)/100
        
        displaylabelOutlet.text = "Price after discount: $\(priceAfterDiscount)"
    }
    
    @IBOutlet weak var displaylabelOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

