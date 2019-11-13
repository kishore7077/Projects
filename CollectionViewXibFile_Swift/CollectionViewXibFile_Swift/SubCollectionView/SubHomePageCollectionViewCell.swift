//
//  SubHomePageCollectionViewCell.swift
//  CollectionViewXibFile_Swift
//
//  Created by trainee on 05/11/18.
//  Copyright © 2018 trainee. All rights reserved.
//

import UIKit

class SubHomePageCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var mainLblTitle: UILabel!
    @IBOutlet weak var downBtn: UIButton!
    @IBOutlet weak var upBtn: UIButton!
    @IBOutlet weak var subMainTitleLbl: UILabel!
    @IBOutlet weak var mainImageView: UIImageView!
    
    @IBOutlet weak var constDownImageButton: NSLayoutConstraint!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        upBtn.isHidden = true
       // constDownImageButton.constant = 0
    }

    @IBAction func downBtnAction(_ sender: Any) {
        downBtn.isHidden = true
        upBtn.isHidden = false
        mainImageView.isHidden = true
        subMainTitleLbl.isHidden  = false
    }
    
    @IBAction func upBtnAction(_ sender: Any) {
        downBtn.isHidden = false
        upBtn.isHidden = true
        mainImageView.isHidden = false
        subMainTitleLbl.isHidden  = true
       // constDownImageButton.constant = 0
        
    }
    
    
    
    
}
