//
//  ViewController.swift
//  Gallary To Collection VIew
//
//  Created by trainee on 28/01/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate,UICollectionViewDelegate,UICollectionViewDataSource {
    
    //MARK: Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var firstImg: UIImageView!
    @IBOutlet weak var txtFldDeatail: UITextField!
    @IBOutlet weak var txtFldName: UITextField!
    
    //MARK:Variables
    var imageArr = [ModelUser]()
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }
    
    @IBAction func addBtn(_ sender: Any) {
        imagePicker.allowsEditing = true
        imagePicker.sourceType = .photoLibrary
        self.present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage{
            
            firstImg.image = image
           }
        self.dismiss(animated: true, completion: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imgCVC", for: indexPath) as! imgCVC
    
        let store = imageArr[indexPath.item]
       
       cell.collectImg.image = store.image
        cell.lblName.text = store.name
        cell.lblDetail.text = store.detail
        cell.replaceBtn.tag = indexPath.item
       cell.replaceBtn.addTarget(self, action: #selector(replaceAction(_:)), for: .touchUpInside)
        cell.cnclBtn.tag = indexPath.item
        cell.cnclBtn.addTarget(self, action: #selector(clearValue), for: .touchUpInside)
        return cell
    }
    @objc func clearValue(sender: UIButton){
        imageArr.remove(at: sender.tag)
    
        collectionView.reloadData()
    }
    @IBAction func addTocollectionBtn(_ sender: Any) {
        let objModel = ModelUser()
        objModel.name = txtFldName.text!
        objModel.detail = txtFldDeatail.text!
        objModel.image = firstImg.image!
        imageArr.append(objModel)
        collectionView.reloadData()
        txtFldName.text = ""
        txtFldDeatail.text = ""
        firstImg.image = nil
    }
    @IBAction func updateAction(_ sender: Any) {
        let objModel = ModelUser()
        objModel.name = txtFldName.text!
        objModel.detail = txtFldDeatail.text!
        objModel.image = firstImg.image!
        imageArr.remove(at: 0)
        imageArr.append(objModel)
        collectionView.reloadData()
        txtFldName.text = ""
        txtFldDeatail.text = ""
        firstImg.image = nil
        }
    
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)  {
//
//    let store = imageArr[indexPath.item]
//    firstImg.image = store.image
//    txtFldName.text = store.name
//    txtFldDeatail.text = store.detail
//   }
    @objc func replaceAction(_ sender: UIButton) {
        let store = imageArr[sender.tag]
        self.firstImg.image = store.image
        self.txtFldName.text = store.name
        self.txtFldDeatail.text = store.detail
    }
}


