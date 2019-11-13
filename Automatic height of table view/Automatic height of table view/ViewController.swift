//
//  ViewController.swift
//  Automatic height of table view
//
//  Created by trainee on 05/02/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    

    @IBOutlet weak var tblView: UITableView!
  
  
   var detailArr = ["Learn about the armored mammals called armadillos, which can be found in various areas throughout North and South America.","The flamingo is one of the most recognized birds in the world","Learn about several birds that run and walk and swim instead of fly."]
    var DataArr = ["People have been taming animals for 10,000 years.","A keeper at an Oregon sanctuary for big cats was killed over the weekend, and sanctuary officials hinted Sunday that she may have been violating safety rules when she was attacked by one of the animals.","The killing of a young giraffe at a Danish zoo - after which it was publicly butchered and fed to a lion - breaks what should be the most inviolate if unwritten contract when humans remove wild animals from their natural habitat: to protect and keep healthy those animals and their descendants. A spokesman for the Copenhagen Zoo said the killing with a bolt gun of the 2-year-old giraffe was done to prevent inbreeding of the zoo's population. The zoo brushed off other options, such as giving the animal to another willing zoo."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tblView.rowHeight = UITableViewAutomaticDimension
        self.tblView.estimatedRowHeight = 50
    }
  
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblView.dequeueReusableCell(withIdentifier: "DataTVC") as! DataTVC
        cell.lblName.text = DataArr[indexPath.row]
       
        cell.lblHead.text = detailArr[indexPath.row]
       
        return cell
    }
   

}

