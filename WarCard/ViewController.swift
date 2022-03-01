//
//  ViewController.swift
//  WarCard
//
//  Created by Osanyem Osadebe on 2022-02-22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var LeftImageView: UIImageView!
    
    @IBOutlet weak var RightImageView: UIImageView!
    
    
    @IBOutlet weak var LeftScoreLabel: UILabel!
    
    
    @IBOutlet weak var RightScoreLabel: UILabel!
    
    var leftScore = 0
    
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealTapped(_ sender: Any) {
        //Randomize numbers
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        //Update the image views
        LeftImageView.image = UIImage(named: "card\(leftNumber)");
        RightImageView.image = UIImage(named: "card\(rightNumber)");
        
        //Update score based on random number
        if leftNumber > rightNumber {
            
            leftScore += 1
            LeftScoreLabel.text = String(leftScore)
            
        }
        else if rightNumber > leftNumber {
            
            rightScore += 1
            RightScoreLabel.text = String(rightScore)
            
        }
        
    }
    
}

