//
//  ViewController.swift
//  DiscountAppMVController
//
//  Created by Nelavelli,Chandu on 3/30/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var amountOL: UITextField!
    
    @IBOutlet weak var discountOL: UITextField!
    
    var priceAfterDisc = 0.0
    
    @IBAction func calBtnDisc(_ sender: UIButton) {
        //Read the text and convert it to Double
        var amount = Double(amountOL.text!)
        print(amount!)
        
        var discrate = Double(discountOL.text!)
        print(discrate!)
        
        priceAfterDisc = amount! - (amount!*discrate!/100)
        print(priceAfterDisc)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if(transition == "resultsegue"){
            
            //set the destination
            var destination = segue.destination as! ResultViewController
            
            //assign appropriate values to the destination
            destination.amount = amountOL.text!
            destination.discRate = discountOL.text!
            destination.priceAfterDisc = String(priceAfterDisc)
        }
    }


}

