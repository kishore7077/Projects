//
//  SecondVC.swift
//  Demo Project
//
//  Created by trainee on 22/02/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    var name:String!
    var imageDetail:UIImage!
    @IBOutlet weak var lblMain: UILabel!
    @IBOutlet weak var imgMain: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
       lblMain.text = name
        imgMain.image = imageDetail
  
    }

   
    

 

}
