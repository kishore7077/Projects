//
//  ViewController.swift
//  Delete and Cancel Btn
//
//  Created by trainee on 04/01/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
 var arrCompany = ["Iphone", "Samsung", "Nokia", "Vivo", "RedMe"]
   
    
@IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
       
    }
    
    //num of row func
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCompany.count
    }
    
    //cell for row func
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        cell.lblHeading.text = "\(arrCompany[indexPath.row])"
        return cell
    }
    
    
        //edit action func
        func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
            
            
                
            
            let delete = UITableViewRowAction(style: .destructive, title: "Delete"){(action,indexPath) in
                
             
                
                let deleteMenu = UIAlertController(title: nil, message: "Remove Company", preferredStyle: .actionSheet)
                
                let deleteAction = UIAlertAction(title: "Delete", style: UIAlertActionStyle.default) { _ in
//                    print("We can run a block of code." )
                    self.arrCompany.remove(at: indexPath.row)
                    self.tableView.deleteRows(at: [indexPath], with: .fade)
                    self.tableView.reloadData()
                    
                }

               // let deleteAction = UIAlertAction(title: "Delete", style: UIAlertActionStyle.default, handler: nil)
                
                let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil)
                deleteMenu.addAction(deleteAction)
                deleteMenu.addAction(cancelAction)
                self.present(deleteMenu, animated: true, completion: nil)
                
                }
            
            return [delete]
        }
   
        }

        

    












