//
//  ViewController.swift
//  CustomXibFile_Swift
//
//  Created by trainee on 05/11/18.
//  Copyright © 2018 trainee. All rights reserved.
//

import UIKit

struct cellData {
    let cell: Int!
    let text: String!
    let image: UIImage!
}

class TableViewController: UITableViewController {
    
    var arrayOfCellData = [cellData]()
    
    override func viewDidLoad() {
        
        
       arrayOfCellData = [cellData(cell: 1, text: "dfdf", image: UIImage(named: "vector-wallpapers-landscape-5 5")),
                           cellData(cell: 2, text: "vbvn", image:  UIImage(named: "vector-wallpapers-landscape-5 5")),
                           cellData(cell: 1, text: "dfgf", image:  UIImage(named: "vector-wallpapers-landscape-5 5"))]
        
        
     
    
    
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfCellData.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if arrayOfCellData[indexPath.row].cell == 1 {
            
            let cell = Bundle.main.loadNibNamed("TableViewCell1", owner: self, options: nil)?.first as! TableViewCell1
            cell.mainImageView.image = arrayOfCellData[indexPath.row].image
            cell.mainLabel.text = arrayOfCellData[indexPath.row].text
            
            return cell
            
        }
        
        else if arrayOfCellData[indexPath.row].cell == 2 {
            
            let cell = Bundle.main.loadNibNamed("TableViewCell2", owner: self, options: nil)?.first as! TableViewCell2
            cell.mainImageView.image = arrayOfCellData[indexPath.row].image
            cell.mainLbl.text = arrayOfCellData[indexPath.row].text
            
            return cell
            
        }
        else {
            
            let cell = Bundle.main.loadNibNamed("TableViewCell1", owner: self, options: nil)?.first as! TableViewCell1
            cell.mainImageView.image = arrayOfCellData[indexPath.row].image
            cell.mainLabel.text = arrayOfCellData[indexPath.row].text
            
            return cell
            
        }
        
        
   
    
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if arrayOfCellData[indexPath.row].cell == 1 {
            
            return 250
            
    }
     else if arrayOfCellData[indexPath.row].cell == 2 {
            
            return 109
        }
        
        else{
           return 250
        }
    
}

}
