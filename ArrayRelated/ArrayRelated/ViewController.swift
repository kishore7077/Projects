//
//  ViewController.swift
//  ArrayRelated
//
//  Created by trainee on 31/12/18.
//  Copyright © 2018 trainee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var addBtn: UIButton!
    
    var  listMutableArr = NSMutableArray()
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var txtLabel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    @IBAction func addData(_ sender: Any) {
        listMutableArr.add(txtLabel.text!)
        tableView.reloadData()
        txtLabel.text = ""
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listMutableArr.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "TableViewCell" )  as! TableViewCell
        cell.lblTitle.text = "\(listMutableArr[indexPath.row])"
        cell.crossBtn.addTarget(self, action: #selector(clearValue(_:)), for: .touchUpInside)
        cell.crossBtn.tag = indexPath.row
        return cell
    }
    @objc func clearValue(_ sender: UIButton) {
        listMutableArr.removeObject(at: sender.tag)
        tableView.reloadData()
    }
    
}



