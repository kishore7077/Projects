//
//  FrontVC.swift
//  DrawerSide
//
//  Created by trainee on 24/10/18.
//  Copyright © 2018 trainee. All rights reserved.
//

import UIKit
import SWRevealViewController
class FrontVC: SWRevealViewController {
    
    @IBOutlet weak var sideBarButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if (sideBarButton != nil )
        {
            if self.revealViewController() != nil
            {
//        SWRevealViewController *revealViewController = self.revealViewController;
//        if (revealViewController) {
//                sideBarButton.addTarget(self, action: #selector())
//                [self.sideBarButton.Target: self.revealViewController]
//                [self.sideBarButton.Action: #selector(revealToggle:)]
            
//                sideBarButton.addTarget(self, action: #selector(revealToggle(_:)), for: .touchUpInside);
                sideBarButton.addTarget(self.revealViewController(), action: "revealToggle:", for: UIControl.Event.touchUpInside)
                self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
                self.navigationController?.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            }
        }
                
        revealViewController().rearViewRevealWidth = 200
        revealViewController().rearViewRevealOverdraw = 0
        revealViewController().toggleAnimationDuration = 0.2
        //revealViewController().toggleAnimationType = SWRevealToggleAnimationType
        revealViewController().frontViewShadowRadius = 5

        };
    @IBAction func leftBtn(_ sender: Any) {
       
    }
    
//    @objc func revealToggle(_ sender :UIButton){
//        let indexVal = sender.tag
//        
//        
//    }
}
//                sideBarButton.target = self.revealViewController()
//                sideBarButton.action = "revealToggle:"
            
        

    

    


