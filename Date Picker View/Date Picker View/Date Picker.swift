//
//  Date Picker.swift
//  Date Picker View
//
//  Created by trainee on 11/01/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class Date_Picker: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var txtDate: UITextField!
    let datePicker = UIDatePicker()
    override func viewDidLoad() {
        super.viewDidLoad()
    showDate()
        txtDate.clearButtonMode = .whileEditing
    txtDate.delegate = self
        txtDate.textColor = UIColor(red: 140/255, green: 168/255, blue: 0/255, alpha: 0.3)
        txtDate.font = UIFont(name: "Baskerville-BoldItalic", size: 34)
       
       }
func showDate(){
        datePicker.datePickerMode = .dateAndTime
      
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let doneButton = UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.done, target: self, action: #selector(Date_Picker.doneDatePicker))
        let cancelButton = UIBarButtonItem(title: "cancel", style: UIBarButtonItemStyle.done, target: self, action: #selector(Date_Picker.cancelAction))
        toolbar.setItems([doneButton, cancelButton], animated: true)
        txtDate.inputAccessoryView = toolbar
        txtDate.inputView = datePicker
        }
   @objc func doneDatePicker(){
        let formatter = DateFormatter()
//    formatter.dateStyle = .medium
//    formatter.timeStyle = .short
    formatter.dateFormat = "E, d MMM yyyy    HH:mm:ss a"
        txtDate.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
 
    }
   @objc func cancelAction(){
        self.view.endEditing(true)
    
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {

        if txtDate.text!.isEmpty {
            let formatter = DateFormatter()
//            formatter.dateStyle = .medium
//            formatter.timeStyle = .short
             formatter.dateFormat = "E, d MMM yyyy    HH:mm:ss a"
            txtDate.text = formatter.string(from: Date())
        }
        return true
    }

}
