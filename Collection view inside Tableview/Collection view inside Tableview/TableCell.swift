//
//  TableCell.swift
//  Collection view inside Tableview
//
//  Created by trainee on 18/01/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {

  
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var imgLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
