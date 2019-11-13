//
//  ViewController.swift
//  Country Picker View
//
//  Created by trainee on 14/01/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {

    @IBOutlet weak var cityTxt: UITextField!
    @IBOutlet weak var stateTxt: UITextField!
    @IBOutlet weak var countryTxt: UITextField!
    var cityName = ["Patiala","Delhi","Mohali","Chandigarh","Rajpura"]
    var countryName = ["England","America","Australia","Canada","India"]
    var stateName = ["Punjab","Haryana","Bihar","Mumbai","Chhenai"]
   
    let picker = UIPickerView()
    var everyTextField = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        countryTxt.delegate = self
        stateTxt.delegate = self
        cityTxt.delegate = self
        
        picker.delegate = self
        picker.dataSource = self
        
        countryTxt.inputView = picker
        stateTxt.inputView = picker
        cityTxt.inputView = picker
        
        showButton()
       }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        switch textField {
        case countryTxt:
            everyTextField = "Country"
        case stateTxt:
            everyTextField = "State"
        case cityTxt:
            everyTextField = "City"
            
        default:
            return true
          
        }
           picker.reloadAllComponents()
        return true
    }
      
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if everyTextField == "Country"{
            return countryName.count
        }
        else if everyTextField == "State"{
            return stateName.count
        }
        else if everyTextField == "City"{
            return cityName.count
        }
        return 0
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if everyTextField == "Country"{
            return countryName[row]
        }
        else if everyTextField == "State"{
            return stateName[row]
        }
        else if everyTextField == "City"{
            return cityName[row]
        }
        
        return nil
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        
        if everyTextField == "Country"{
            countryTxt.text = countryName[row]
        }
        else if everyTextField == "State"{
            stateTxt.text = stateName[row]
        }
        else if everyTextField == "City"{
            cityTxt.text = cityName[row]
        }
        }
    func showButton(){
    let toolbar = UIToolbar()
    toolbar.sizeToFit()
        let doneButton = UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.done, target: self, action: #selector(doneAction))
       toolbar.setItems([doneButton], animated: true)
        countryTxt.inputAccessoryView = toolbar
        stateTxt.inputAccessoryView = toolbar
        cityTxt.inputAccessoryView = toolbar
        
       
    }
    @objc func doneAction(){
        
          self.view.endEditing(true)
    }
    
        }

    







