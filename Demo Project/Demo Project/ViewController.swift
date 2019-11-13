//
//  ViewController.swift
//  Demo Project
//
//  Created by trainee on 22/02/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    
    @IBOutlet weak var dataTblView: UITableView!
    var dataArr = [("Lily", #imageLiteral(resourceName: "1")),("Amaryliss", #imageLiteral(resourceName: "2")),("Anemon", #imageLiteral(resourceName: "3")),("Golden-Rayed Lily", #imageLiteral(resourceName: "4")),("Rhododendron", #imageLiteral(resourceName: "5")),("baby's-breath", #imageLiteral(resourceName: "6")),]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:DataTVC = dataTblView.dequeueReusableCell(withIdentifier: "DataTVC") as! DataTVC
        cell.lblTitle.text = dataArr[indexPath.row].0
        cell.imgDemo.image = dataArr[indexPath.row].1
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 260
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail:SecondVC = storyboard?.instantiateViewController(withIdentifier: "SecondVC")as! SecondVC
        detail.name = dataArr[indexPath.row].0
        detail.imageDetail = dataArr[indexPath.row].1
        self.navigationController?.pushViewController(detail, animated: true)
    }
}

