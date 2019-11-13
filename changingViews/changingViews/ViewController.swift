//
//  ViewController.swift
//  changingViews
//
//  Created by trainee on 05/01/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
     @IBOutlet weak var theView1: UIView!
     @IBOutlet weak var theView2: UIView!
     @IBOutlet weak var theView3: UIView!
     @IBOutlet weak var theView4: UIView!
     @IBOutlet weak var theView5: UIView!
     @IBOutlet weak var theView6: UIView!
     @IBOutlet weak var theView7: UIView!
     @IBOutlet weak var theView8: UIView!
    
    var placeOfView1 :CGRect?
    var placeOfView6 :CGRect?

    @IBOutlet var dragGesture: UIPanGestureRecognizer!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        placeOfView1 = theView1.frame
        
        placeOfView6 = theView6.frame
    }
    @IBAction func dragTheView(_ sender: UIPanGestureRecognizer)
    {
        theView1.frame = placeOfView6!
        
        theView6.frame = placeOfView1!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

