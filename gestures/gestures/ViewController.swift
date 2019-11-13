//
//  ViewController.swift
//  gestures
//
//  Created by trainee on 02/01/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var monkeyImage: UIImageView!
    @IBOutlet weak var bananaImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        }
    
    //Pan Gesture
    @IBAction func handlePan(recognizer:UIPanGestureRecognizer) {
        let translation = recognizer.translation(in: self.view)
        if let view = recognizer.view {
            view.center = CGPoint(x:view.center.x + translation.x,
                                  y:view.center.y + translation.y)
        }
        recognizer.setTranslation(CGPoint.zero, in: self.view)
    }
    
    //Pinch Gesture
    @IBAction func pinchGesture(recognizer:UIPinchGestureRecognizer){
        if let view = recognizer.view {
            view.transform = view.transform.scaledBy(x: recognizer.scale, y: recognizer.scale)
            recognizer.scale = 1
        }
    }
    
    //Rotation Gesture
    @IBAction func rotateGesture (recognizer:UIRotationGestureRecognizer){
    if let view = recognizer.view {
        view.transform = view.transform.rotated(by: recognizer.rotation)
        recognizer.rotation = 0
    }
    }
}

