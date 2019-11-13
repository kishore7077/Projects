//
//  DataTVC.swift
//  DemoTextfield
//
//  Created by trainee on 23/02/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class DataTVC: UITableViewCell {
    
    @IBOutlet weak var emailTxtFld: UITextField!
    @IBOutlet weak var passwrdTxtFld: UITextField!
    @IBOutlet weak var btnAction: UIButton!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
