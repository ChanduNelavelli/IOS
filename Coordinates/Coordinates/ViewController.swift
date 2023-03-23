//
//  ViewController.swift
//  Coordinates
//
//  Created by Nelavelli,Chandu on 3/23/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //minx and miny
        
        let minX = imageViewOutlet.frame.minX
        let minY = imageViewOutlet.frame.minY
        print("(\(minX),\(minY))")
        
        let maxX = imageViewOutlet.frame.maxX
        let maxY = imageViewOutlet.frame.maxY
        print("(\(maxX),\(maxY))")
        
        let midX = imageViewOutlet.frame.midX
        let midY = imageViewOutlet.frame.midY
        print("(\(midX),\(midY))")
        
        //move the location to upper left corner
        imageViewOutlet.frame.origin.x = 0
        imageViewOutlet.frame.origin.y = 0
        
        //move the location to upper right corner
        imageViewOutlet.frame.origin.x = 280
        imageViewOutlet.frame.origin.y = 0
        
        //move the location to bottom left corner
        imageViewOutlet.frame.origin.x = 0
        imageViewOutlet.frame.origin.y = 696
        
        //move the location to bottom left corner
        imageViewOutlet.frame.origin.x = 280
        imageViewOutlet.frame.origin.y = 696
        
        //move the location to mid point of the screen corner
        imageViewOutlet.frame.origin.x = (414/2)-50
        imageViewOutlet.frame.origin.y = (896/2)-50
    }
}

