//
//  ViewController.swift
//  Magic8Ball
//
//  Created by admin on 7/4/2562 BE.
//  Copyright © 2562 purinat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballAnswer: UIImageView!
    
    @IBAction func askButton(_ sender: UIButton) {
        ballAnswer.image = UIImage(named:"ball\(Int.random(in: 1...5))")
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
         ballAnswer.image = UIImage(named:"ball\(Int.random(in: 1...5))")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

