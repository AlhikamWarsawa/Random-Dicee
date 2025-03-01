//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var leftDiceNumber = 0
    var rightDiceNumber = 0
    
    // override func viewDidLoad(){Code goes here}
    // Launch App Screen
    override func viewDidLoad() {
        super.viewDidLoad()
        //who.what = value
//        diceImageView1.image = UIImage(named: "DiceSix")
        diceImageView1.alpha = 0.5
        diceImageView2.alpha = 0.5
        
    }
    // Button Roll
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageView1.alpha = 1
        diceImageView2.alpha = 1
        
        let diceArray = [
            UIImage(named: "DiceOne"),
            UIImage(named: "DiceTwo"),
            UIImage(named: "DiceThree"),
            UIImage(named: "DiceFour"),
            UIImage(named: "DiceFive"),
            UIImage(named: "DiceSix")
        ]
        
        let randomDiceNumber = Int.random(in: 0...5)
        
        diceImageView1.image = diceArray[randomDiceNumber]
        diceImageView2.image = diceArray[randomDiceNumber]
    }
}

