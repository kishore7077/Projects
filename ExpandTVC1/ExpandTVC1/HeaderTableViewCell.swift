//
//  HeaderTableViewCell.swift
//  ExpandTVC1
//
//  Created by trainee on 15/02/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class HeaderTableViewCell: UITableViewCell {
    @IBOutlet weak var btnDown: UIButton!
    @IBOutlet weak var lblTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
