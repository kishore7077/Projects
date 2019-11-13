//
//  ViewController.swift
//  Header Table
//
//  Created by trainee on 01/02/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var headerArr = ["Animals","Birds","Fruits"]
    var animalArr = ["Tiger","Lion","Monkey","Dog"]
    var BirdArr = ["Sparrow","Parrot","Pigeon","Crow"]
    var fruitArr = ["Banana","Orange","Mango","Apple"]
  
 
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    func numberOfSections(in tableView: UITableView) -> Int {
       
            return headerArr.count
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
       return headerArr[section]
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return animalArr.count
        }
        else if section == 1 {
            return BirdArr.count
        }
        else{
            return fruitArr.count
        }
      
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListTVC") as! ListTVC
        if indexPath.section == 0 {
        cell.lblName.text = animalArr[indexPath.row]
            
        }
        else if indexPath.section == 1 {
            cell.lblName.text = BirdArr[indexPath.row]
            
        }
        else{
            cell.lblName.text = fruitArr[indexPath.row]
           
        }
        return cell
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 100
//    }
    
}

