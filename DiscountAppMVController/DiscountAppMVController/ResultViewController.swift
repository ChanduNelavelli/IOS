//
//  ResultViewController.swift
//  DiscountAppMVController
//
//  Created by Nelavelli,Chandu on 3/30/23.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var displayAmountOL: UILabel!
    
    @IBOutlet weak var displayDiscountOL: UILabel!
    
    @IBOutlet weak var resultOL: UILabel!
    
    var amount = ""
    var discRate = ""
    var priceAfterDisc = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayAmountOL.text = displayAmountOL.text! + amount
        displayDiscountOL.text = displayDiscountOL.text! + discRate
        resultOL.text = resultOL.text! + priceAfterDisc
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
