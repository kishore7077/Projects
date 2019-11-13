//
//  ViewController.swift
//  ExpandTVC1
//
//  Created by trainee on 15/02/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var tblView: UITableView!

//    var dataArr = [(["a"],["b"],["c"]),(["d"],["e"],["f"]),(["g"],["h"],["i"])]
    
    var selecetdHeader = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
extension ViewController : UITableViewDataSource,UITableViewDelegate{
    
    
//    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
//        let headerView = HeaderView(frame: CGRect(x: 0 , y: 0, width: tblView.frame.size.height, height: 40))
//        return headerView
//    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tblView.dequeueReusableCell(withIdentifier: "HeaderTableViewCell") as! HeaderTableViewCell
        cell.lblTitle?.text = "Data"
        cell.btnDown.tag = section
        cell.btnDown.addTarget(self, action: #selector(expandCell(_:)), for: .touchUpInside)
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if  selecetdHeader.contains(section){
            return 4
        }
        else{
           return 0
      }
        
  }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblView.dequeueReusableCell(withIdentifier: "CellTVC") as! CellTVC
       
        cell.lblTitle.text = "Abbie"
        
        return cell
        
    }
    
    @objc func expandCell(_ sender: UIButton)  {
        
        if selecetdHeader.contains(sender.tag) {
          
            selecetdHeader.remove(at: sender.tag)
            }
        
    else
        {

         selecetdHeader.append(sender.tag)
        }
      
        tblView.reloadData()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
}
