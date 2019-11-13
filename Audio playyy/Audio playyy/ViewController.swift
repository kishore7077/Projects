//
//  ViewController.swift
//  Audio playyy
//
//  Created by trainee on 07/02/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    var player:AVAudioPlayer = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
       
        do {
            let audioPlayer = Bundle.main.path(forResource: "SampleAudio_0.4mb", ofType: "mp3")
        
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPlayer!) as URL)
        }
        catch{
            
           
        }
    }

   @IBAction func btnPlay(_ sender: Any) {
        player.play()
    }
   @IBAction func btnStop(_ sender: Any) {
        player.stop()
    }
    
}

