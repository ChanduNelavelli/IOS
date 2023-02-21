//
//  ViewController.swift
//  displayImageApp
//
//  Created by Nelavelli,Chandu on 2/21/23.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func displayImage(_ sender: UIButton) {
        displayLabelOl.text = "Father of AC current"
        imageViewOt.image = UIImage(named:"tesla")
    }
    
    
    @IBOutlet var imageViewOt: UIImageView!
    
    @IBOutlet var displayLabelOl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

