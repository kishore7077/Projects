//
//  ViewController.swift
//  collection view change index
//
//  Created by trainee on 05/02/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    
    // fileprivate var longPressGesture: UILongPressGestureRecognizer!
    @IBOutlet weak var collView: UICollectionView!
    
    var imgArr:[UIImage] = [#imageLiteral(resourceName: "img9"),#imageLiteral(resourceName: "img3"),#imageLiteral(resourceName: "img5"),#imageLiteral(resourceName: "monkey"),#imageLiteral(resourceName: "img10"),#imageLiteral(resourceName: "img2"),#imageLiteral(resourceName: "Screen Shot 2019-02-01 at 6.06.32 PM"),#imageLiteral(resourceName: "img3"),#imageLiteral(resourceName: "Screen Shot 2019-02-01 at 6.07.00 PM"),#imageLiteral(resourceName: "img7")]
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        longPressGesture = UILongPressGestureRecognizer(target: self, action: #selector(self.handleLongGesture(gesture:)))
//        collView.addGestureRecognizer(longPressGesture)

       
    }
    
  //  @objc func handleLongGesture(gesture: UILongPressGestureRecognizer) {
   //     switch(gesture.state) {

  //      case .began:
  //          guard let selectedIndexPath = collView.indexPathForItem(at: gesture.location(in: collView)) else {
    //            break
   //         }
    //        collView.beginInteractiveMovementForItem(at: selectedIndexPath)
    //    case .changed:
            //collView.updateInteractiveMovementTargetPosition(gesture.location(in: gesture.view!))
       // case .ended:
         //   collView.endInteractiveMovement()
       // default:
       //     collView.cancelInteractiveMovement()
      //  }
   // }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collView.dequeueReusableCell(withReuseIdentifier: "GridCVC", for: indexPath) as! GridCVC
        cell.imgDemo.image = imgArr[indexPath.item]
        return cell
    }
// func collectionView(_ collectionView: UICollectionView, itemsForBeginning
//        session: UIDragSession, at indexPath: IndexPath) -> [UIDragItem] {
//
//        let provider = NSItemProvider(object: imgArr[indexPath.row])
//        let dragItem = UIDragItem(itemProvider: provider)
//        return [dragItem]
//    }
    
    func collectionView(_ collectionView: UICollectionView, moveItemAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let item = imgArr.remove(at: sourceIndexPath.item)
        imgArr.insert(item, at: destinationIndexPath.item)
    }
}

