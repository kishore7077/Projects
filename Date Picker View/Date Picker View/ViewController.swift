//
//  ViewController.swift
//  Date Picker View
//
//  Created by trainee on 11/01/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var lblDate: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

   

    @IBAction func getDateAction(_ sender: Any) {
        lblDate.text = "\(datePicker.date)"
    }
    
}


