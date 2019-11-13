//
//  ViewController.swift
//  Expandable table view
//
//  Created by trainee on 31/01/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit
struct cellData {
    var opened = Bool()
    var title: String!
    var sectionData: [String]!
}
struct labelData {
    var name = String()
    var image = UIImage()
}

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    var storeIndex = Int()
    var selectedIndex = Int()
    
    var contactArr = [cellData(opened: false, title: "A", sectionData: ["Aman","Anuj","Arijeet"]), cellData(opened: false, title: "D", sectionData: ["Daman","Dilpreet","Deepa"]), cellData(opened: false, title: "J", sectionData: ["Jasleen","Jass","Jasmeet"]), cellData(opened: false, title: "k", sectionData: ["Kavita","Komal","Kawal"])]
    
    var dataArr = [cellData(opened: false, title: "b", sectionData: ["Aman","Anuj","Arijeet"]), cellData(opened: false, title: "e", sectionData: ["Daman","Dilpreet","Deepa"]), cellData(opened: false, title: "f", sectionData: ["Jasleen","Jass","Jasmeet"]), cellData(opened: false, title: "g", sectionData: ["Kavita","Komal","Kawal"])]
    //
    //    var animalArr = ["Dog","Tiger","Lion","Zebra"]
    //   var birdArray = ["Crow","Sparrow","Parrot","Pigeon"]
    //   var fruitArr = ["Banana","Orange","Apple","Mango"]
    //    var flowerArray = ["Rose","Lily","SunFlower","Amaryliss"]
    
    var collectionData = [labelData(name: "Animals", image: #imageLiteral(resourceName: "img1")), labelData(name: "Birds", image: #imageLiteral(resourceName: "img6")), labelData(name: "Fruits", image: #imageLiteral(resourceName: "Screen Shot 2019-02-01 at 11.54.49 AM")), labelData(name: "Flowers", image: #imageLiteral(resourceName: "Screen Shot 2019-02-01 at 11.54.20 AM")),]
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
        let nibFile : UINib =  UINib(nibName: "ListCVC", bundle: nil)
        collectionView.register(nibFile, forCellWithReuseIdentifier: "ListCVC")
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        
        if selectedIndex == 0{
            
            return contactArr.count
        }else{
            return dataArr.count
        }
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if selectedIndex == 0{
            
            return contactArr[section].title
        }else{
            return dataArr[section].title
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if selectedIndex == 0{
            if contactArr[section].opened == true {
                return contactArr[section].sectionData.count + 1
            }
            else{
                return 0
            }
        }else{
            if dataArr[section].opened == true {
                return dataArr[section].sectionData.count + 1
            }
            else{
                return 0
            }
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TVC") as! TVC
       
//        if selectedIndex == 0 {
//
//            cell.lblFirst.text = contactArr[indexPath.section].title
//        }
//        else {
//            cell.lblFirst.text = dataArr[indexPath.section].title
//        }
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if contactArr[indexPath.section].opened == true{
            contactArr[indexPath.section].opened = false
            let sections = IndexSet.init(integer: indexPath.section)
            tableView.reloadSections(sections, with: .fade)
        }
        else  {
            contactArr[indexPath.section].opened = true
            let sections = IndexSet.init(integer: indexPath.section)
            tableView.reloadSections(sections, with: .fade)
        }
    }
    
}
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        if selectedIndex == 0{
//            return animalArr.count
//        }
//        else if selectedIndex == 1{
//           return birdArray.count
//        }
//        else if selectedIndex == 2{
//            return fruitArr.count
//        }
//        else  {
//            return flowerArray.count
//        }
//
//    }
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "TVC") as! TVC
//         if selectedIndex == 0{
//       cell.lblFirst.text = animalArr[indexPath.row]
//         }
//         else if selectedIndex == 1{
//            cell.lblFirst.text = birdArray[indexPath.row]
//
//        }
//         else if selectedIndex == 2{
//            cell.lblFirst.text = fruitArr[indexPath.row]
//
//        }
//         else {
//            cell.lblFirst.text = flowerArray[indexPath.row]
//
//        }
//        return cell
//    }


extension ViewController: UICollectionViewDataSource,UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionData.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ListCVC", for: indexPath) as! ListCVC
        
        
        cell.lblName.text = collectionData[indexPath.item].name
        cell.imgFirst.image = collectionData[indexPath.item].image
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedIndex = indexPath.item
        tableView.reloadData()
    }
}
