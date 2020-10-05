//
//  ViewController.swift
//  WarCardGame
//
//  Created by Andrew Nguyen on 3/25/20.
//  Copyright © 2020 Andrew Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
        //print(leftNumber)
        
        let rightNumber = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber {
            //Left Side Wins
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
            
        } else if leftNumber < rightNumber {
            //Right Side Wins
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
            
        } else {
            //Tie
        }
        
        
    }
    

}

