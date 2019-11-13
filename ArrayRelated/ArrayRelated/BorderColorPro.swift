//
//  BorderColorPro.swift
//  ArrayRelated
//
//  Created by trainee on 31/12/18.
//  Copyright © 2018 trainee. All rights reserved.
//

import UIKit

class BorderColorPro: UIViewController {
@IBOutlet weak var uiView: UIView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var txtField: UITextField!
    @IBOutlet weak var btnCol: UIButton!
    
    @IBOutlet weak var lblIOS: UILabel!
    
    @IBOutlet weak var txrPass: UITextField!
    
    @IBOutlet weak var lblPass: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        //VIEW
        uiView.backgroundColor = .purple
        uiView.layer.borderWidth = 6
        uiView.layer.borderColor = UIColor.brown.cgColor
        uiView.layer.cornerRadius = 38
        
        //LABEL
        lblIOS.textColor = .red
        lblIOS.layer.borderWidth = 3
        lblIOS.layer.borderColor = UIColor.green.cgColor
        lblIOS.layer.cornerRadius = 70
        lblIOS.layer.borderWidth = 6
        //LABEL TITLE
        lblTitle.textColor = .red
        lblTitle.backgroundColor = .yellow
        lblTitle.layer.borderWidth = 4
        lblTitle.layer.borderColor = UIColor.brown.cgColor
        
        //TEXTFIELD
        txtField.layer.borderWidth = 2
        txtField.layer.borderColor = UIColor.brown.cgColor
        txtField.textColor = .red
        txrPass.layer.borderWidth = 2
        txrPass.layer.borderColor = UIColor.brown.cgColor
        txrPass.textColor = .red
        lblEmail.textColor = .blue
        lblPass.textColor = .blue
           //BUTTON
        btnCol.backgroundColor = .red
        btnCol.tintColor = .white
        btnCol.layer.cornerRadius = 24
    }

}
