//
//  ViewController.swift
//  displayweather
//
//  Created by Nelavelli,Chandu on 2/21/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var tempOutlet: UITextField!
    
    @IBOutlet var imageOutlet: UIImageView!
    
    @IBAction func displayImage(_ sender: UIButton) {
        let temp = Int(tempOutlet.text!)!
        if(temp<0){
            imageOutlet.image = UIImage(named:"toocool")
        }
        else if(temp>0&&temp<30){
            imageOutlet.image = UIImage(named:"moderate")
        }
        else{
            imageOutlet.image = UIImage(named:"hot")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

