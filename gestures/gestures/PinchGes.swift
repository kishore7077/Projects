//
//  PinchGes.swift
//  gestures
//
//  Created by trainee on 02/01/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class PinchGes: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func pinchGesture(recognizer:UIPinchGestureRecognizer){
        if let view = recognizer.view {
            view.transform = view.transform.scaledBy(x: recognizer.scale, y: recognizer.scale)
            recognizer.scale = 1
        }
       
    }

}
