//
//  ViewController.swift
//  Dicee
//
//  Created by admin on 5/4/2562 BE.
//  Copyright © 2562 purinat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    for what Angela ?????? Do like me LOL
//    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    @IBOutlet weak var diceIm1: UIImageView!
    @IBOutlet weak var diceIm2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func rollButton(_ sender: UIButton) {
        diceIm1.image = UIImage(named: generateRandomDice());
        diceIm2.image = UIImage(named: generateRandomDice());
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        diceIm1.image = UIImage(named: generateRandomDice());
        diceIm2.image = UIImage(named: generateRandomDice());
    }
    
    func generateRandomDice() -> String{
       
        return "dice\(Int.random(in: 1 ... 6))"
    }
    
    }

