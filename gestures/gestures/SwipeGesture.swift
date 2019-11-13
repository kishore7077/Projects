//
//  SwipeGesture.swift
//  gestures
//
//  Created by trainee on 02/01/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class SwipeGesture: UIViewController {
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
        rightSwipe.direction = .right
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
        leftSwipe.direction = .left
          let upSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
        upSwipe.direction = .up
          let downSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
        downSwipe.direction = .down
        
        view.addGestureRecognizer(rightSwipe)
        view.addGestureRecognizer(leftSwipe)
        view.addGestureRecognizer(upSwipe)
        view.addGestureRecognizer(downSwipe)
        
    }
    @objc func handleSwipe(sender:UISwipeGestureRecognizer){
      
            switch sender.direction{
            case .right:
            view.backgroundColor = .blue
                print("right swipe")
            case .left:
                view.backgroundColor = .green
                 print("left swipe")
            case .up:
                view.backgroundColor = .red
                 print("up swipe")
            case .down:
                view.backgroundColor = .yellow
                 print("down swipe")
                
            default:
                break
                }
       
    }
}
