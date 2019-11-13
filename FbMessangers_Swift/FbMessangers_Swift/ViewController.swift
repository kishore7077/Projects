//
//  ViewController.swift
//  FbMessangers_Swift
//
//  Created by trainee on 04/12/18.
//  Copyright © 2018 trainee. All rights reserved.
//

import UIKit

class FriendsController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    fileprivate let cellId = "cellId"

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = UIColor.white
        collectionView?.alwaysBounceVertical = true
        collectionView?.register(FriendCell.self, forCellWithReuseIdentifier: "cellId")
        
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        return collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
         return CGSize(width:view.frame.width, height:100)
    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemIndexPath indexPath: NSIndexPath) -> CGSize {
//
//        return CGSize(width:view.frame.width, height:100)
//
//    }
    
}

class FriendCell: BaseCell {
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
   override func setupViews() {
        backgroundColor = UIColor.blue
        addSubview(profileImageView)
    
    profileImageView.image = UIImage(named: "background-bill-gates-transparent-8")
    profileImageView.translatesAutoresizingMaskIntoConstraints = false
    addConstraints(NSLayoutConstraint.constraints( withVisualFormat: "H:|[v0(68)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": profileImageView]))
    addConstraints(NSLayoutConstraint.constraints( withVisualFormat: "V:|[v0(68)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": profileImageView]))
    
    }
    
}

class BaseCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupViews() {
        
        backgroundColor = UIColor.blue
        
    }
}
