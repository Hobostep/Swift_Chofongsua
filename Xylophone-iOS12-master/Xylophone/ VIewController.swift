//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
//import AudioToolbox

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var player : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        
         let url = Bundle.main.url(forResource: "note\(sender.tag)", withExtension: "wav")!
        do{
            player = try AVAudioPlayer(contentsOf: url)
            
        }catch{
            print(error)
        }
       
        player.play()
        
    }
    
  

}

