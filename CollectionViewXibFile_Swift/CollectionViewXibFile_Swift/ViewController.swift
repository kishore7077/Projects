//
//  ViewController.swift
//  CollectionViewXibFile_Swift
//
//  Created by trainee on 05/11/18.
//  Copyright © 2018 trainee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collViewHomePage: UICollectionView!
    

    var priMainTitle = ["First", "Second"]
    var priSubTitle  = [" Hi iphone developer", "Hi Android developer"]
    
    var imgArr = ["car.png","Home.png"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collViewHomePage.register(UINib(nibName: "SubHomePageCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "SubHomePageCollectionViewCell")
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return priMainTitle.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SubHomePageCollectionViewCell", for: indexPath) as! SubHomePageCollectionViewCell
        cell.layer.borderWidth = 1.5
        cell.layer.borderColor = UIColor.black.cgColor
        cell.mainLblTitle.text = priMainTitle[indexPath.row]
        cell.subMainTitleLbl.text = priSubTitle[indexPath.row]
        //UIImage(named:string)!
        cell.mainImageView.image = UIImage(named: imgArr[indexPath.row])
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: (collViewHomePage.frame.size.width)-10, height: 200 )
        
    }
    
    
    
}

